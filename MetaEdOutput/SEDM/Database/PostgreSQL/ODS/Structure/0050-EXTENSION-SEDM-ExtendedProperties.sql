-- Extended Properties [sedm].[EventComplianceDescriptor] --
COMMENT ON TABLE sedm.EventComplianceDescriptor IS 'The policy or law for which an event is compliant.';
COMMENT ON COLUMN sedm.EventComplianceDescriptor.EventComplianceDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [sedm].[EventReasonDescriptor] --
COMMENT ON TABLE sedm.EventReasonDescriptor IS 'Reason the event occured.';
COMMENT ON COLUMN sedm.EventReasonDescriptor.EventReasonDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [sedm].[IDEAEventDescriptor] --
COMMENT ON TABLE sedm.IDEAEventDescriptor IS 'IDEA event type. Examples: Referral for Evaluation, IEP Approved, Parental COnsent Given, Evaluation Complete.';
COMMENT ON COLUMN sedm.IDEAEventDescriptor.IDEAEventDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [sedm].[IEPGoalDescriptor] --
COMMENT ON TABLE sedm.IEPGoalDescriptor IS 'A focused goal for an IEP.';
COMMENT ON COLUMN sedm.IEPGoalDescriptor.IEPGoalDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [sedm].[IEPStatusDescriptor] --
COMMENT ON TABLE sedm.IEPStatusDescriptor IS 'The current status of the student IEP.';
COMMENT ON COLUMN sedm.IEPStatusDescriptor.IEPStatusDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [sedm].[ServiceComplianceDescriptor] --
COMMENT ON TABLE sedm.ServiceComplianceDescriptor IS 'The policy or law for which a prescribed service is compliant.';
COMMENT ON COLUMN sedm.ServiceComplianceDescriptor.ServiceComplianceDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [sedm].[ServiceDeliveryDescriptor] --
COMMENT ON TABLE sedm.ServiceDeliveryDescriptor IS 'The type of service provided to a student.';
COMMENT ON COLUMN sedm.ServiceDeliveryDescriptor.ServiceDeliveryDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [sedm].[ServicePrescriptionDescriptor] --
COMMENT ON TABLE sedm.ServicePrescriptionDescriptor IS 'The type of service prescribed.';
COMMENT ON COLUMN sedm.ServicePrescriptionDescriptor.ServicePrescriptionDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [sedm].[ServiceProviderDescriptor] --
COMMENT ON TABLE sedm.ServiceProviderDescriptor IS 'Indicates service provider type, including specialist, internal staff, external staff, etc.';
COMMENT ON COLUMN sedm.ServiceProviderDescriptor.ServiceProviderDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [sedm].[ServiceReasonDescriptor] --
COMMENT ON TABLE sedm.ServiceReasonDescriptor IS 'Reason the service was prescribed. Examples include: Counselor Assigned, IEP Team Determination.';
COMMENT ON COLUMN sedm.ServiceReasonDescriptor.ServiceReasonDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

