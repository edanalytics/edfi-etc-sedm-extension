-- Extended Properties [sedm].[DurationPeriodDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The frequency period for the prescribed service duration. Examples include: Per Session, Per Week, Per Month.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'DurationPeriodDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'DurationPeriodDescriptor', @level2type=N'COLUMN', @level2name=N'DurationPeriodDescriptorId'
GO

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

-- Extended Properties [sedm].[FrequencyPeriodDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The frequency period for the prescribed service. Examples include: Session, Week, Month.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'FrequencyPeriodDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'FrequencyPeriodDescriptor', @level2type=N'COLUMN', @level2name=N'FrequencyPeriodDescriptorId'
GO

-- Extended Properties [sedm].[IDEAEvent] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An IDEA related student event describing status, dates and narrative.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IDEAEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IDEAEvent', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The IDEA event recorded for the student.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IDEAEvent', @level2type=N'COLUMN', @level2name=N'IDEAEventDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for the event record as assigned by the provider of IEP services.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IDEAEvent', @level2type=N'COLUMN', @level2name=N'IDEAEventID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IDEAEvent', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date when the IDEA related event started.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IDEAEvent', @level2type=N'COLUMN', @level2name=N'EventBeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of compliance represented by this event.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IDEAEvent', @level2type=N'COLUMN', @level2name=N'EventComplianceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date when the IDEA event concluded.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IDEAEvent', @level2type=N'COLUMN', @level2name=N'EventEndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Detailed and summary notes recorded during the event.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IDEAEvent', @level2type=N'COLUMN', @level2name=N'EventNarrative'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reason why the IDEA event occured.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IDEAEvent', @level2type=N'COLUMN', @level2name=N'EventReasonDescriptorId'
GO

-- Extended Properties [sedm].[IDEAEventDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IDEA event type. Examples: Referral for Evaluation, IEP Approved, Parental COnsent Given, Evaluation Complete.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IDEAEventDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IDEAEventDescriptor', @level2type=N'COLUMN', @level2name=N'IDEAEventDescriptorId'
GO

-- Extended Properties [sedm].[IEPGoal] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A goal prescribed to a student as part of their IEP.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPGoal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the most recent IEP was finalized.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPGoal', @level2type=N'COLUMN', @level2name=N'IEPFinalizedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier assigned by the provider of IEP services.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPGoal', @level2type=N'COLUMN', @level2name=N'IEPGoalID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPGoal', @level2type=N'COLUMN', @level2name=N'IEPServicingEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier assigned by the provider or source system of IEP services.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPGoal', @level2type=N'COLUMN', @level2name=N'StudentIEPAssociationID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPGoal', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPGoal', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first date of the period assigned for achieving the stated goal.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPGoal', @level2type=N'COLUMN', @level2name=N'GoalAchievementPeriodBeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The last date of the period assigned for achieving the stated goal.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPGoal', @level2type=N'COLUMN', @level2name=N'GoalAchievementPeriodEndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The IDEA event recorded for the student.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPGoal', @level2type=N'COLUMN', @level2name=N'IDEAEventDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for the event record as assigned by the provider of IEP services.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPGoal', @level2type=N'COLUMN', @level2name=N'IDEAEventID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A focused goal prescribed as part of the IEP. Examples include Academic Goal, Behavioral Goal, Attendance Goal.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPGoal', @level2type=N'COLUMN', @level2name=N'IEPGoalDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Instructions or other details specific to the student and/or provider for achieving the stated goal.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPGoal', @level2type=N'COLUMN', @level2name=N'IEPGoalDetails'
GO

-- Extended Properties [sedm].[IEPGoalDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A focused goal for an IEP.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPGoalDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPGoalDescriptor', @level2type=N'COLUMN', @level2name=N'IEPGoalDescriptorId'
GO

-- Extended Properties [sedm].[IEPServiceDelivery] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Services delivered to a student as prescribed by their IEP.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServiceDelivery'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the most recent IEP was finalized.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServiceDelivery', @level2type=N'COLUMN', @level2name=N'IEPFinalizedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier assigned by the provider of IEP services for the delivery record.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServiceDelivery', @level2type=N'COLUMN', @level2name=N'IEPServiceDeliveryID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServiceDelivery', @level2type=N'COLUMN', @level2name=N'IEPServicingEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date when prescribed services were delivered for a student.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServiceDelivery', @level2type=N'COLUMN', @level2name=N'ServiceDeliveryDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of services delivered to the student.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServiceDelivery', @level2type=N'COLUMN', @level2name=N'ServiceDeliveryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier assigned by the provider or source system of IEP services.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServiceDelivery', @level2type=N'COLUMN', @level2name=N'StudentIEPAssociationID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServiceDelivery', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServiceDelivery', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The IDEA event recorded for the student.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServiceDelivery', @level2type=N'COLUMN', @level2name=N'IDEAEventDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for the event record as assigned by the provider of IEP services.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServiceDelivery', @level2type=N'COLUMN', @level2name=N'IDEAEventID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServiceDelivery', @level2type=N'COLUMN', @level2name=N'ServiceDeliveryStaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the service was prescribed.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServiceDelivery', @level2type=N'COLUMN', @level2name=N'ServicePrescriptionDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of service prescribed. Examples include: Auditory Specialist, Vocational Therapy.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServiceDelivery', @level2type=N'COLUMN', @level2name=N'ServicePrescriptionDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates service provider type, including specialist, internal staff, external staff, etc.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServiceDelivery', @level2type=N'COLUMN', @level2name=N'ServiceProviderDescriptorId'
GO

-- Extended Properties [sedm].[IEPServiceDeliveryExternalServiceProvider] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The external service provider organization or individual that delivered the prescribed service to the student.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServiceDeliveryExternalServiceProvider'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the most recent IEP was finalized.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServiceDeliveryExternalServiceProvider', @level2type=N'COLUMN', @level2name=N'IEPFinalizedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier assigned by the provider of IEP services for the delivery record.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServiceDeliveryExternalServiceProvider', @level2type=N'COLUMN', @level2name=N'IEPServiceDeliveryID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServiceDeliveryExternalServiceProvider', @level2type=N'COLUMN', @level2name=N'IEPServicingEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date when prescribed services were delivered for a student.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServiceDeliveryExternalServiceProvider', @level2type=N'COLUMN', @level2name=N'ServiceDeliveryDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of services delivered to the student.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServiceDeliveryExternalServiceProvider', @level2type=N'COLUMN', @level2name=N'ServiceDeliveryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier assigned by the provider or source system of IEP services.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServiceDeliveryExternalServiceProvider', @level2type=N'COLUMN', @level2name=N'StudentIEPAssociationID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServiceDeliveryExternalServiceProvider', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code assigned to the external service provider.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServiceDeliveryExternalServiceProvider', @level2type=N'COLUMN', @level2name=N'ProviderCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first name of the external service provider.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServiceDeliveryExternalServiceProvider', @level2type=N'COLUMN', @level2name=N'ProviderFirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The last name of the external service provider.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServiceDeliveryExternalServiceProvider', @level2type=N'COLUMN', @level2name=N'ProviderLastSurname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Primary External Service Provider.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServiceDeliveryExternalServiceProvider', @level2type=N'COLUMN', @level2name=N'PrimaryProvider'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The middle name of the external service provider.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServiceDeliveryExternalServiceProvider', @level2type=N'COLUMN', @level2name=N'ProviderMiddleName'
GO

-- Extended Properties [sedm].[IEPServicePrescription] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The service prescribed to a student as part of their IEP.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServicePrescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the most recent IEP was finalized.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServicePrescription', @level2type=N'COLUMN', @level2name=N'IEPFinalizedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServicePrescription', @level2type=N'COLUMN', @level2name=N'IEPServicingEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the service was prescribed.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServicePrescription', @level2type=N'COLUMN', @level2name=N'ServicePrescriptionDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of service prescribed. Examples include: Auditory Specialist, Vocational Therapy.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServicePrescription', @level2type=N'COLUMN', @level2name=N'ServicePrescriptionDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier assigned by the provider or source system of IEP services.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServicePrescription', @level2type=N'COLUMN', @level2name=N'StudentIEPAssociationID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServicePrescription', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The effective date when service is to begin.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServicePrescription', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The length of time for the prescribed service in minutes.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServicePrescription', @level2type=N'COLUMN', @level2name=N'DurationMinutes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The frequency period for the prescribed service duration. Examples include: Per Session, Per Week, Per Month.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServicePrescription', @level2type=N'COLUMN', @level2name=N'DurationPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServicePrescription', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The effective date when the prescribed service ended.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServicePrescription', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The frequency period for the prescribed service. Examples include: Session, Week, Month.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServicePrescription', @level2type=N'COLUMN', @level2name=N'FrequencyPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of times the prescribed service is to be provided within the specified duration period.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServicePrescription', @level2type=N'COLUMN', @level2name=N'FrequencyValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The IDEA event recorded for the student.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServicePrescription', @level2type=N'COLUMN', @level2name=N'IDEAEventDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for the event record as assigned by the provider of IEP services.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServicePrescription', @level2type=N'COLUMN', @level2name=N'IDEAEventID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The location type where the prescribed service is to be provided. Examples include: Home, Hospital, School.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServicePrescription', @level2type=N'COLUMN', @level2name=N'ServiceLocationTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServicePrescription', @level2type=N'COLUMN', @level2name=N'ServiceProvidingEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'IEPServicePrescription', @level2type=N'COLUMN', @level2name=N'StaffUSI'
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

-- Extended Properties [sedm].[ServiceLocationTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The location type where the prescribed service is to be provided. Examples include: Home, Hospital, School.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'ServiceLocationTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'ServiceLocationTypeDescriptor', @level2type=N'COLUMN', @level2name=N'ServiceLocationTypeDescriptorId'
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

-- Extended Properties [sedm].[StudentIEPAccommodation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The accommodations prescribed to a student as part of their IEP.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAccommodation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the most recent IEP was finalized.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAccommodation', @level2type=N'COLUMN', @level2name=N'IEPFinalizedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAccommodation', @level2type=N'COLUMN', @level2name=N'IEPServicingEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier assigned by the provider or source system of IEP services.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAccommodation', @level2type=N'COLUMN', @level2name=N'StudentIEPAssociationID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAccommodation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [sedm].[StudentIEPAccommodation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The special variation(s) to be used in how various services (in general) are presented, how they are administered, or how the student is allowed to respond. This generally refers to changes that do not substantially alter the content that the service renders. The proper use of accommodations does not substantially change academic level or performance criteria.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAccommodation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the most recent IEP was finalized.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAccommodation', @level2type=N'COLUMN', @level2name=N'IEPFinalizedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAccommodation', @level2type=N'COLUMN', @level2name=N'IEPServicingEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier assigned by the provider or source system of IEP services.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAccommodation', @level2type=N'COLUMN', @level2name=N'StudentIEPAssociationID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAccommodation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The special variation(s) to be used in how various services (in general) are presented, how they are administered, or how the student is allowed to respond. This generally refers to changes that do not substantially alter the content that the service renders. The proper use of accommodations does not substantially change academic level or performance criteria.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAccommodation', @level2type=N'COLUMN', @level2name=N'AccommodationDescriptorId'
GO

-- Extended Properties [sedm].[StudentIEPAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association describes summary IEP data for a student receiving special education services.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the most recent IEP was finalized.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAssociation', @level2type=N'COLUMN', @level2name=N'IEPFinalizedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAssociation', @level2type=N'COLUMN', @level2name=N'IEPServicingEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier assigned by the provider or source system of IEP services.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAssociation', @level2type=N'COLUMN', @level2name=N'StudentIEPAssociationID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date when the most recent IEP was last amended, if any.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAssociation', @level2type=N'COLUMN', @level2name=N'IEPAmendedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The effective start date of the most recent IEP.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAssociation', @level2type=N'COLUMN', @level2name=N'IEPBeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The effective end date of the most recent IEP.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAssociation', @level2type=N'COLUMN', @level2name=N'IEPEndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The current status of the most recent IEP.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAssociation', @level2type=N'COLUMN', @level2name=N'IEPStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates whether the student receiving special education and related services is: 1) in the age range of birth to 22 years, and 2) has a serious, ongoing illness or a chronic condition that has lasted or is anticipated to last at least 12 or more months or has required at least one month of hospitalization, and that requires daily, ongoing medical treatments and monitoring by appropriately trained personnel which may include parents or other family members, and 3) requires the routine use of medical device or of assistive technology to compensate for the loss of usefulness of a body function needed to participate in activities of daily living, and 4) lives with ongoing threat to his or her continued well-being. Aligns with federal requirements.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAssociation', @level2type=N'COLUMN', @level2name=N'MedicallyFragile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates whether the student receiving special education and related services has been designated as multiply disabled by the admission, review, and dismissal committee as aligned with federal requirements.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAssociation', @level2type=N'COLUMN', @level2name=N'MultiplyDisabled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reason the student left and stop receiving special education services.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAssociation', @level2type=N'COLUMN', @level2name=N'ReasonExitedDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the total number of hours of instructional time per week for the school that the student attends.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAssociation', @level2type=N'COLUMN', @level2name=N'SchoolHoursPerWeek'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the total number of hours of time per week specific to special education related services.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAssociation', @level2type=N'COLUMN', @level2name=N'SpecialEducationHoursPerWeek'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The major instructional setting (more than 50 percent of a student''s special education program).', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAssociation', @level2type=N'COLUMN', @level2name=N'SpecialEducationSettingDescriptorId'
GO

-- Extended Properties [sedm].[StudentIEPAssociationIDEAEvent] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A reference to one or more student IDEA events.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAssociationIDEAEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the most recent IEP was finalized.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAssociationIDEAEvent', @level2type=N'COLUMN', @level2name=N'IEPFinalizedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAssociationIDEAEvent', @level2type=N'COLUMN', @level2name=N'IEPServicingEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier assigned by the provider or source system of IEP services.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAssociationIDEAEvent', @level2type=N'COLUMN', @level2name=N'StudentIEPAssociationID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAssociationIDEAEvent', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAssociationIDEAEvent', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The IDEA event recorded for the student.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAssociationIDEAEvent', @level2type=N'COLUMN', @level2name=N'IDEAEventDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for the event record as assigned by the provider of IEP services.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPAssociationIDEAEvent', @level2type=N'COLUMN', @level2name=N'IDEAEventID'
GO

-- Extended Properties [sedm].[StudentIEPDisability] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The disabilities prescribed to a student as part of their IEP.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPDisability'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the most recent IEP was finalized.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPDisability', @level2type=N'COLUMN', @level2name=N'IEPFinalizedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPDisability', @level2type=N'COLUMN', @level2name=N'IEPServicingEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier assigned by the provider or source system of IEP services.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPDisability', @level2type=N'COLUMN', @level2name=N'StudentIEPAssociationID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPDisability', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [sedm].[StudentIEPDisability] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The disability condition(s) that best describes an individual''s impairment, as related to special education services received.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPDisability'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the most recent IEP was finalized.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPDisability', @level2type=N'COLUMN', @level2name=N'IEPFinalizedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPDisability', @level2type=N'COLUMN', @level2name=N'IEPServicingEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier assigned by the provider or source system of IEP services.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPDisability', @level2type=N'COLUMN', @level2name=N'StudentIEPAssociationID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPDisability', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A disability category that describes a individual''s impairment.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPDisability', @level2type=N'COLUMN', @level2name=N'DisabilityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The source that provided the disability determination.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPDisability', @level2type=N'COLUMN', @level2name=N'DisabilityDeterminationSourceTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the disability diagnosis.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPDisability', @level2type=N'COLUMN', @level2name=N'DisabilityDiagnosis'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The order by severity of individual''s disabilities: 1- Primary, 2 -  Secondary, 3 - Tertiary, etc.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPDisability', @level2type=N'COLUMN', @level2name=N'OrderOfDisability'
GO

-- Extended Properties [sedm].[StudentIEPDisabilityDesignation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Whether the disability is IDEA, Section 504, or other disability designation.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPDisabilityDesignation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the most recent IEP was finalized.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'IEPFinalizedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'IEPServicingEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier assigned by the provider or source system of IEP services.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'StudentIEPAssociationID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A disability category that describes a individual''s impairment.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'DisabilityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Whether the disability is IDEA, Section 504, or other disability designation.', @level0type=N'SCHEMA', @level0name=N'sedm', @level1type=N'TABLE', @level1name=N'StudentIEPDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'DisabilityDesignationDescriptorId'
GO

