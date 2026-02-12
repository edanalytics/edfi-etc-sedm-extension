-- ==============================================================================
-- Descriptor Mappings: SC State Codes → EdFacts Codes
-- Generated: 2026-02-12
-- Source: LRECodes.csv, SC-SEDM-Descriptors-Template_add.csv
-- Total Mappings: 20
-- ==============================================================================

BEGIN;

-- Mapping 1: State Code '1' -> EdFacts Code 'RC80' | Inside regular class 80% or more of the day
INSERT INTO edfi.descriptormapping (mappednamespace, mappedvalue, "namespace", value, createdate, lastmodifieddate)
VALUES('uri://sedm.edfacts.gov/SpecialEducationSettingDescriptor','RC80','uri://sedm.sc.gov/SpecialEducationSettingDescriptor','1',timezone('UTC'::text, CURRENT_TIMESTAMP),timezone('UTC'::text, CURRENT_TIMESTAMP));

-- Mapping 2: State Code '2' -> EdFacts Code 'RC79TO40' | Inside regular class 40% through 79% of the day
INSERT INTO edfi.descriptormapping (mappednamespace, mappedvalue, "namespace", value, createdate, lastmodifieddate)
VALUES('uri://sedm.edfacts.gov/SpecialEducationSettingDescriptor','RC79TO40','uri://sedm.sc.gov/SpecialEducationSettingDescriptor','2',timezone('UTC'::text, CURRENT_TIMESTAMP),timezone('UTC'::text, CURRENT_TIMESTAMP));

-- Mapping 3: State Code '3' -> EdFacts Code 'RC39' | Inside regular class less than 40% of the day
INSERT INTO edfi.descriptormapping (mappednamespace, mappedvalue, "namespace", value, createdate, lastmodifieddate)
VALUES('uri://sedm.edfacts.gov/SpecialEducationSettingDescriptor','RC39','uri://sedm.sc.gov/SpecialEducationSettingDescriptor','3',timezone('UTC'::text, CURRENT_TIMESTAMP),timezone('UTC'::text, CURRENT_TIMESTAMP));

-- Mapping 4: State Code '6' -> EdFacts Code 'RF' | Residential Facility
INSERT INTO edfi.descriptormapping (mappednamespace, mappedvalue, "namespace", value, createdate, lastmodifieddate)
VALUES('uri://sedm.edfacts.gov/SpecialEducationSettingDescriptor','RF','uri://sedm.sc.gov/SpecialEducationSettingDescriptor','6',timezone('UTC'::text, CURRENT_TIMESTAMP),timezone('UTC'::text, CURRENT_TIMESTAMP));

-- Mapping 5: State Code '8' -> EdFacts Code 'HH' | Homebound/Hospital
INSERT INTO edfi.descriptormapping (mappednamespace, mappedvalue, "namespace", value, createdate, lastmodifieddate)
VALUES('uri://sedm.edfacts.gov/SpecialEducationSettingDescriptor','HH','uri://sedm.sc.gov/SpecialEducationSettingDescriptor','8',timezone('UTC'::text, CURRENT_TIMESTAMP),timezone('UTC'::text, CURRENT_TIMESTAMP));

-- Mapping 6: State Code '8a' -> EdFacts Code 'HH' | Homebound/Hospital – Medical Homebound
INSERT INTO edfi.descriptormapping (mappednamespace, mappedvalue, "namespace", value, createdate, lastmodifieddate)
VALUES('uri://sedm.edfacts.gov/SpecialEducationSettingDescriptor','HH','uri://sedm.sc.gov/SpecialEducationSettingDescriptor','8a',timezone('UTC'::text, CURRENT_TIMESTAMP),timezone('UTC'::text, CURRENT_TIMESTAMP));

-- Mapping 7: State Code '8b' -> EdFacts Code 'HH' | Homebound/Hospital – Hospital
INSERT INTO edfi.descriptormapping (mappednamespace, mappedvalue, "namespace", value, createdate, lastmodifieddate)
VALUES('uri://sedm.edfacts.gov/SpecialEducationSettingDescriptor','HH','uri://sedm.sc.gov/SpecialEducationSettingDescriptor','8b',timezone('UTC'::text, CURRENT_TIMESTAMP),timezone('UTC'::text, CURRENT_TIMESTAMP));

-- Mapping 8: State Code '8c' -> EdFacts Code 'HH' | Homebound/Hospital – Home-based
INSERT INTO edfi.descriptormapping (mappednamespace, mappedvalue, "namespace", value, createdate, lastmodifieddate)
VALUES('uri://sedm.edfacts.gov/SpecialEducationSettingDescriptor','HH','uri://sedm.sc.gov/SpecialEducationSettingDescriptor','8c',timezone('UTC'::text, CURRENT_TIMESTAMP),timezone('UTC'::text, CURRENT_TIMESTAMP));

-- Mapping 9: State Code '16' -> EdFacts Code 'CF' | Correctional Facilities
INSERT INTO edfi.descriptormapping (mappednamespace, mappedvalue, "namespace", value, createdate, lastmodifieddate)
VALUES('uri://sedm.edfacts.gov/SpecialEducationSettingDescriptor','CF','uri://sedm.sc.gov/SpecialEducationSettingDescriptor','16',timezone('UTC'::text, CURRENT_TIMESTAMP),timezone('UTC'::text, CURRENT_TIMESTAMP));

-- Mapping 10: State Code '17' -> EdFacts Code 'PPPS' | Parentally placed in private schools
INSERT INTO edfi.descriptormapping (mappednamespace, mappedvalue, "namespace", value, createdate, lastmodifieddate)
VALUES('uri://sedm.edfacts.gov/SpecialEducationSettingDescriptor','PPPS','uri://sedm.sc.gov/SpecialEducationSettingDescriptor','17',timezone('UTC'::text, CURRENT_TIMESTAMP),timezone('UTC'::text, CURRENT_TIMESTAMP));

-- Mapping 11: State Code '13' -> EdFacts Code 'SS' | Separate School
INSERT INTO edfi.descriptormapping (mappednamespace, mappedvalue, "namespace", value, createdate, lastmodifieddate)
VALUES('uri://sedm.edfacts.gov/SpecialEducationSettingDescriptor','SS','uri://sedm.sc.gov/SpecialEducationSettingDescriptor','13',timezone('UTC'::text, CURRENT_TIMESTAMP),timezone('UTC'::text, CURRENT_TIMESTAMP));

-- Mapping 12: State Code '9' -> EdFacts Code 'REC10YSVCS' | Services in Regular Early Childhood Program (at least 10 hours)
INSERT INTO edfi.descriptormapping (mappednamespace, mappedvalue, "namespace", value, createdate, lastmodifieddate)
VALUES('uri://sedm.edfacts.gov/SpecialEducationSettingDescriptor','REC10YSVCS','uri://sedm.sc.gov/SpecialEducationSettingDescriptor','9',timezone('UTC'::text, CURRENT_TIMESTAMP),timezone('UTC'::text, CURRENT_TIMESTAMP));

-- Mapping 13: State Code '10' -> EdFacts Code 'REC10YOTHLOC' | Other Location Regular Early Childhood Program (at least 10 hours)
INSERT INTO edfi.descriptormapping (mappednamespace, mappedvalue, "namespace", value, createdate, lastmodifieddate)
VALUES('uri://sedm.edfacts.gov/SpecialEducationSettingDescriptor','REC10YOTHLOC','uri://sedm.sc.gov/SpecialEducationSettingDescriptor','10',timezone('UTC'::text, CURRENT_TIMESTAMP),timezone('UTC'::text, CURRENT_TIMESTAMP));

-- Mapping 14: State Code '11' -> EdFacts Code 'REC09YSVCS' | Services in Regular Early Childhood Program (less than 10 hours)
INSERT INTO edfi.descriptormapping (mappednamespace, mappedvalue, "namespace", value, createdate, lastmodifieddate)
VALUES('uri://sedm.edfacts.gov/SpecialEducationSettingDescriptor','REC09YSVCS','uri://sedm.sc.gov/SpecialEducationSettingDescriptor','11',timezone('UTC'::text, CURRENT_TIMESTAMP),timezone('UTC'::text, CURRENT_TIMESTAMP));

-- Mapping 15: State Code '12' -> EdFacts Code 'REC09YOTHLOC' | Other Location Regular Early Childhood Program (less than 10 hours)
INSERT INTO edfi.descriptormapping (mappednamespace, mappedvalue, "namespace", value, createdate, lastmodifieddate)
VALUES('uri://sedm.edfacts.gov/SpecialEducationSettingDescriptor','REC09YOTHLOC','uri://sedm.sc.gov/SpecialEducationSettingDescriptor','12',timezone('UTC'::text, CURRENT_TIMESTAMP),timezone('UTC'::text, CURRENT_TIMESTAMP));

-- Mapping 16: State Code '4' -> EdFacts Code 'SC' | Separate Class
INSERT INTO edfi.descriptormapping (mappednamespace, mappedvalue, "namespace", value, createdate, lastmodifieddate)
VALUES('uri://sedm.edfacts.gov/SpecialEducationSettingDescriptor','SC','uri://sedm.sc.gov/SpecialEducationSettingDescriptor','4',timezone('UTC'::text, CURRENT_TIMESTAMP),timezone('UTC'::text, CURRENT_TIMESTAMP));

-- Mapping 17: State Code '5' -> EdFacts Code 'SS' | Separate School
INSERT INTO edfi.descriptormapping (mappednamespace, mappedvalue, "namespace", value, createdate, lastmodifieddate)
VALUES('uri://sedm.edfacts.gov/SpecialEducationSettingDescriptor','SS','uri://sedm.sc.gov/SpecialEducationSettingDescriptor','5',timezone('UTC'::text, CURRENT_TIMESTAMP),timezone('UTC'::text, CURRENT_TIMESTAMP));

-- Mapping 18: State Code '14' -> EdFacts Code 'RF' | Residential Facility
INSERT INTO edfi.descriptormapping (mappednamespace, mappedvalue, "namespace", value, createdate, lastmodifieddate)
VALUES('uri://sedm.edfacts.gov/SpecialEducationSettingDescriptor','RF','uri://sedm.sc.gov/SpecialEducationSettingDescriptor','14',timezone('UTC'::text, CURRENT_TIMESTAMP),timezone('UTC'::text, CURRENT_TIMESTAMP));

-- Mapping 19: State Code '7' -> EdFacts Code 'H' | Home
INSERT INTO edfi.descriptormapping (mappednamespace, mappedvalue, "namespace", value, createdate, lastmodifieddate)
VALUES('uri://sedm.edfacts.gov/SpecialEducationSettingDescriptor','H','uri://sedm.sc.gov/SpecialEducationSettingDescriptor','7',timezone('UTC'::text, CURRENT_TIMESTAMP),timezone('UTC'::text, CURRENT_TIMESTAMP));

-- Mapping 20: State Code '15' -> EdFacts Code 'SPL' | Service Provider Location
INSERT INTO edfi.descriptormapping (mappednamespace, mappedvalue, "namespace", value, createdate, lastmodifieddate)
VALUES('uri://sedm.edfacts.gov/SpecialEducationSettingDescriptor','SPL','uri://sedm.sc.gov/SpecialEducationSettingDescriptor','15',timezone('UTC'::text, CURRENT_TIMESTAMP),timezone('UTC'::text, CURRENT_TIMESTAMP));

COMMIT;

-- ==============================================================================
-- Summary: 20 descriptor mappings created
-- Special Cases:
--   - State codes 8, 8a, 8b, 8c all map to EdFacts code HH (4 mappings)
--   - State codes 13, 5 both map to EdFacts code SS (2 mappings)
--   - State codes 6, 14 both map to EdFacts code RF (2 mappings)
-- ==============================================================================
