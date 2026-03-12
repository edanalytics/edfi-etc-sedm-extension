#!/usr/bin/env python3
"""
Add new descriptor rows to SC-SEDM-Descriptors-Template_add.csv.

Supports two modes:
  manual  - add a single row from CLI arguments
  import  - bulk-add rows by mapping columns from a source CSV
  headers - list column headers from a source CSV

Adapted from archive/phase1_reverted/ scripts.
"""

import argparse
import csv
import os
import sys
from pathlib import Path

if sys.platform == "win32":
    sys.stdout.reconfigure(encoding="utf-8")

REPO_ROOT = Path(__file__).resolve().parent.parent
DEFAULT_TARGET = REPO_ROOT / "SC-SEDM-Descriptors-Template_add.csv"
FIELDNAMES = [
    "descriptor",
    "namespace",
    "codevalue",
    "shortdescription",
    "description",
    "effectivebegindate",
    "effectiveenddate",
    "date submitted to EA",
    "notes",
]
PROBLEMATIC_CHARS = {
    "\u2013": "en-dash",
    "\u2014": "em-dash",
    "\u2018": "left single quote",
    "\u2019": "right single quote",
    "\u201c": "left double quote",
    "\u201d": "right double quote",
    "\u00a0": "non-breaking space",
    "\u2026": "horizontal ellipsis",
}


def read_existing_rows(target: Path):
    """Read all existing rows from the target CSV for duplicate checking."""
    rows = []
    if not target.exists():
        return rows
    with open(target, "r", encoding="utf-8-sig") as f:
        reader = csv.DictReader(f)
        for row in reader:
            rows.append(row)
    return rows


def check_duplicates(existing, new_row):
    """Return True and print warning if the row is a duplicate."""
    for row in existing:
        if (
            row.get("descriptor") == new_row["descriptor"]
            and row.get("namespace") == new_row["namespace"]
            and row.get("codevalue") == new_row["codevalue"]
        ):
            print(
                f"  WARNING: duplicate found - descriptor={new_row['descriptor']} "
                f"namespace={new_row['namespace']} codevalue={new_row['codevalue']}"
            )
            return True
    return False


def check_chars(value, field_name, row_label):
    """Warn if value contains problematic characters."""
    warnings = []
    for char, name in PROBLEMATIC_CHARS.items():
        if char in value:
            warnings.append(
                f"  WARNING: {field_name} in {row_label} contains {name} (U+{ord(char):04X})"
            )
    return warnings


def validate_row(row, row_label):
    """Strip whitespace and check for problematic characters. Returns warnings list."""
    warnings = []
    for key in row:
        if row[key] is None:
            row[key] = ""
        stripped = row[key].strip()
        if stripped != row[key]:
            warnings.append(f"  WARNING: stripped whitespace from {key} in {row_label}")
            row[key] = stripped
        warnings.extend(check_chars(row[key], key, row_label))
    return warnings


def make_row(descriptor, namespace, codevalue, shortdescription, description, effectivebegindate):
    """Build a row dict with defaults applied."""
    if not description:
        description = shortdescription
    return {
        "descriptor": descriptor,
        "namespace": namespace,
        "codevalue": codevalue,
        "shortdescription": shortdescription,
        "description": description,
        "effectivebegindate": effectivebegindate,
        "effectiveenddate": "",
        "date submitted to EA": "",
        "notes": "",
    }


def append_rows(target: Path, rows):
    """Append rows to the target CSV. Handles BOM and header for new files."""
    file_exists = target.exists() and target.stat().st_size > 0
    mode = "a" if file_exists else "w"
    # For append mode on utf-8-sig, we must use utf-8 to avoid writing a second BOM
    encoding = "utf-8" if file_exists else "utf-8-sig"

    # Ensure the file ends with a newline before appending
    if file_exists:
        with open(target, "rb") as f:
            f.seek(-1, 2)
            last_byte = f.read(1)
        if last_byte not in (b"\n", b"\r"):
            with open(target, "ab") as f:
                f.write(b"\r\n")

    with open(target, mode, encoding=encoding, newline="") as f:
        writer = csv.DictWriter(f, fieldnames=FIELDNAMES)
        if not file_exists:
            writer.writeheader()
        writer.writerows(rows)


def cmd_headers(args):
    """Print column headers from a source CSV."""
    source = Path(args.source)
    if not source.exists():
        print(f"ERROR: source file not found: {source}", file=sys.stderr)
        sys.exit(1)
    with open(source, "r", encoding="utf-8-sig") as f:
        reader = csv.DictReader(f)
        if reader.fieldnames:
            for name in reader.fieldnames:
                print(name)
        else:
            print("ERROR: no columns found in source file", file=sys.stderr)
            sys.exit(1)


def cmd_manual(args):
    """Add a single descriptor row from CLI arguments."""
    target = Path(args.target)
    existing = read_existing_rows(target)

    row = make_row(
        descriptor=args.descriptor,
        namespace=args.namespace,
        codevalue=args.codevalue,
        shortdescription=args.shortdescription,
        description=args.description,
        effectivebegindate=args.effectivebegindate,
    )

    all_warnings = validate_row(row, f"codevalue={row['codevalue']}")
    is_dup = check_duplicates(existing, row)

    if args.strict and is_dup:
        print("ERROR: duplicate row and --strict is set. Aborting.", file=sys.stderr)
        sys.exit(1)

    for w in all_warnings:
        print(w)

    if args.dry_run:
        print("\n-- DRY RUN (no file modified) --")
        print("Row to add:")
        for k, v in row.items():
            print(f"  {k}: {v}")
    else:
        append_rows(target, [row])
        print(f"\nAdded 1 row to {target}")

    print("\nSummary: 1 row processed, 0 excluded" + (", 1 duplicate warning" if is_dup else ""))


def cmd_import(args):
    """Bulk-add rows from a source CSV."""
    source = Path(args.source)
    target = Path(args.target)

    if not source.exists():
        print(f"ERROR: source file not found: {source}", file=sys.stderr)
        sys.exit(1)

    existing = read_existing_rows(target)

    # Read source rows
    with open(source, "r", encoding="utf-8-sig") as f:
        reader = csv.DictReader(f)
        source_rows = list(reader)

    # Validate column names exist in source
    source_cols = source_rows[0].keys() if source_rows else []
    for col_arg, col_name in [
        ("--codevalue-col", args.codevalue_col),
        ("--description-col", args.description_col),
    ]:
        if col_name not in source_cols:
            print(
                f"ERROR: column '{col_name}' (from {col_arg}) not found in source. "
                f"Available: {', '.join(source_cols)}",
                file=sys.stderr,
            )
            sys.exit(1)

    shortdesc_col = args.shortdescription_col or args.description_col
    if shortdesc_col not in source_cols:
        print(
            f"ERROR: column '{shortdesc_col}' (from --shortdescription-col) not found in source. "
            f"Available: {', '.join(source_cols)}",
            file=sys.stderr,
        )
        sys.exit(1)

    # Parse exclusions
    exclude_set = set()
    if args.exclude_col and args.exclude_values:
        if args.exclude_col not in source_cols:
            print(
                f"ERROR: exclude column '{args.exclude_col}' not found in source.",
                file=sys.stderr,
            )
            sys.exit(1)
        exclude_set = {v.strip() for v in args.exclude_values.split(",")}

    # Build new rows
    rows_to_add = []
    excluded_count = 0
    dup_count = 0
    all_warnings = []

    for src_row in source_rows:
        # Check exclusion
        if args.exclude_col and src_row.get(args.exclude_col, "").strip() in exclude_set:
            excluded_count += 1
            continue

        row = make_row(
            descriptor=args.descriptor,
            namespace=args.namespace,
            codevalue=src_row[args.codevalue_col].strip(),
            shortdescription=src_row[shortdesc_col].strip(),
            description=src_row[args.description_col].strip(),
            effectivebegindate=args.effectivebegindate,
        )

        label = f"codevalue={row['codevalue']}"
        all_warnings.extend(validate_row(row, label))
        is_dup = check_duplicates(existing, row)
        if is_dup:
            dup_count += 1
            if args.strict:
                continue

        rows_to_add.append(row)

    for w in all_warnings:
        print(w)

    if args.dry_run:
        print(f"\n-- DRY RUN (no file modified) --")
        print(f"Rows to add ({len(rows_to_add)}):")
        for row in rows_to_add:
            print(f"  {row['descriptor']},{row['namespace']},{row['codevalue']},"
                  f"{row['shortdescription']},{row['description']},"
                  f"{row['effectivebegindate']},,,")
    else:
        if rows_to_add:
            append_rows(target, rows_to_add)
            print(f"\nAdded {len(rows_to_add)} rows to {target}")
        else:
            print("\nNo rows to add.")

    print(
        f"\nSummary: {len(source_rows)} source rows, "
        f"{len(rows_to_add)} added, "
        f"{excluded_count} excluded, "
        f"{dup_count} duplicate warnings"
    )


def main():
    parser = argparse.ArgumentParser(
        description="Add descriptor rows to SC-SEDM-Descriptors-Template_add.csv"
    )
    subparsers = parser.add_subparsers(dest="command", required=True)

    # --- headers ---
    p_headers = subparsers.add_parser("headers", help="List column headers from a source CSV")
    p_headers.add_argument("--source", required=True, help="Path to source CSV")

    # --- manual ---
    p_manual = subparsers.add_parser("manual", help="Add a single descriptor row")
    p_manual.add_argument("--descriptor", required=True)
    p_manual.add_argument("--namespace", required=True)
    p_manual.add_argument("--codevalue", required=True)
    p_manual.add_argument("--shortdescription", required=True)
    p_manual.add_argument("--description", default="", help="Defaults to shortdescription")
    p_manual.add_argument("--effectivebegindate", default="11/1/2025")
    p_manual.add_argument("--target", default=str(DEFAULT_TARGET))
    p_manual.add_argument("--dry-run", action="store_true")
    p_manual.add_argument("--strict", action="store_true", help="Error on duplicates instead of warning")

    # --- import ---
    p_import = subparsers.add_parser("import", help="Bulk-add rows from a source CSV")
    p_import.add_argument("--source", required=True, help="Path to source CSV")
    p_import.add_argument("--descriptor", required=True)
    p_import.add_argument("--namespace", required=True)
    p_import.add_argument("--codevalue-col", required=True, help="Source column for codevalue")
    p_import.add_argument("--description-col", required=True, help="Source column for description")
    p_import.add_argument("--shortdescription-col", default="", help="Source column for shortdescription (defaults to description-col)")
    p_import.add_argument("--exclude-col", default="", help="Source column to check for exclusions")
    p_import.add_argument("--exclude-values", default="", help="Comma-separated values to exclude")
    p_import.add_argument("--effectivebegindate", default="11/1/2025")
    p_import.add_argument("--target", default=str(DEFAULT_TARGET))
    p_import.add_argument("--dry-run", action="store_true")
    p_import.add_argument("--strict", action="store_true", help="Skip duplicates instead of warning")

    args = parser.parse_args()

    if args.command == "headers":
        cmd_headers(args)
    elif args.command == "manual":
        cmd_manual(args)
    elif args.command == "import":
        cmd_import(args)


if __name__ == "__main__":
    main()
