-- Extended Properties [sedm].[EventComplianceDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The policy or law for which an event is compliant.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'EventComplianceDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'EventComplianceDescriptor', @level2type=N'COLUMN', @level2name=N'EventComplianceDescriptorId'
GO

-- Extended Properties [sedm].[EventReasonDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reason the event occured.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'EventReasonDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'EventReasonDescriptor', @level2type=N'COLUMN', @level2name=N'EventReasonDescriptorId'
GO

-- Extended Properties [sedm].[IDEAEventDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IDEA event type. Examples: Referral for Evaluation, IEP Approved, Parental COnsent Given, Evaluation Complete.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IDEAEventDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IDEAEventDescriptor', @level2type=N'COLUMN', @level2name=N'IDEAEventDescriptorId'
GO

-- Extended Properties [sedm].[IEPGoalDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A focused goal for an IEP.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPGoalDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPGoalDescriptor', @level2type=N'COLUMN', @level2name=N'IEPGoalDescriptorId'
GO

-- Extended Properties [sedm].[IEPStatusDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The current status of the student IEP.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPStatusDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPStatusDescriptor', @level2type=N'COLUMN', @level2name=N'IEPStatusDescriptorId'
GO

-- Extended Properties [sedm].[ServiceComplianceDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The policy or law for which a prescribed service is compliant.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'ServiceComplianceDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'ServiceComplianceDescriptor', @level2type=N'COLUMN', @level2name=N'ServiceComplianceDescriptorId'
GO

-- Extended Properties [sedm].[ServiceDeliveryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of service provided to a student.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'ServiceDeliveryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'ServiceDeliveryDescriptor', @level2type=N'COLUMN', @level2name=N'ServiceDeliveryDescriptorId'
GO

-- Extended Properties [sedm].[ServicePrescriptionDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of service prescribed.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'ServicePrescriptionDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'ServicePrescriptionDescriptor', @level2type=N'COLUMN', @level2name=N'ServicePrescriptionDescriptorId'
GO

-- Extended Properties [sedm].[ServiceProviderDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates service provider type, including specialist, internal staff, external staff, etc.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'ServiceProviderDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'ServiceProviderDescriptor', @level2type=N'COLUMN', @level2name=N'ServiceProviderDescriptorId'
GO

-- Extended Properties [sedm].[ServiceReasonDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reason the service was prescribed. Examples include: Counselor Assigned, IEP Team Determination.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'ServiceReasonDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'ServiceReasonDescriptor', @level2type=N'COLUMN', @level2name=N'ServiceReasonDescriptorId'
GO

