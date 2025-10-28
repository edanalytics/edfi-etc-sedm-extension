-- Extended Properties [sedm].[DurationPeriodDescriptor] --
COMMENT ON TABLE sedm.DurationPeriodDescriptor IS 'The frequency period for the prescribed service duration. Examples include: Per Session, Per Week, Per Month.';
COMMENT ON COLUMN sedm.DurationPeriodDescriptor.DurationPeriodDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [sedm].[EventComplianceDescriptor] --
COMMENT ON TABLE sedm.EventComplianceDescriptor IS 'The policy or law for which an event is compliant.';
COMMENT ON COLUMN sedm.EventComplianceDescriptor.EventComplianceDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [sedm].[EventReasonDescriptor] --
COMMENT ON TABLE sedm.EventReasonDescriptor IS 'Reason the event occured.';
COMMENT ON COLUMN sedm.EventReasonDescriptor.EventReasonDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [sedm].[FrequencyPeriodDescriptor] --
COMMENT ON TABLE sedm.FrequencyPeriodDescriptor IS 'The frequency period for the prescribed service. Examples include: Session, Week, Month.';
COMMENT ON COLUMN sedm.FrequencyPeriodDescriptor.FrequencyPeriodDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [sedm].[IDEAEvent] --
COMMENT ON TABLE sedm.IDEAEvent IS 'An IDEA related student event describing status, dates and narrative.';
COMMENT ON COLUMN sedm.IDEAEvent.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN sedm.IDEAEvent.IDEAEventDescriptorId IS 'The IDEA event recorded for the student.';
COMMENT ON COLUMN sedm.IDEAEvent.IDEAEventID IS 'A unique identifier for the event record as assigned by the provider of IEP services.';
COMMENT ON COLUMN sedm.IDEAEvent.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN sedm.IDEAEvent.EventBeginDate IS 'The date when the IDEA related event started.';
COMMENT ON COLUMN sedm.IDEAEvent.EventComplianceDescriptorId IS 'The type of compliance represented by this event.';
COMMENT ON COLUMN sedm.IDEAEvent.EventEndDate IS 'The date when the IDEA event concluded.';
COMMENT ON COLUMN sedm.IDEAEvent.EventNarrative IS 'Detailed and summary notes recorded during the event.';
COMMENT ON COLUMN sedm.IDEAEvent.EventReasonDescriptorId IS 'The reason why the IDEA event occured.';

-- Extended Properties [sedm].[IDEAEventDescriptor] --
COMMENT ON TABLE sedm.IDEAEventDescriptor IS 'IDEA event type. Examples: Referral for Evaluation, IEP Approved, Parental COnsent Given, Evaluation Complete.';
COMMENT ON COLUMN sedm.IDEAEventDescriptor.IDEAEventDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [sedm].[IEPGoalDescriptor] --
COMMENT ON TABLE sedm.IEPGoalDescriptor IS 'A focused goal for an IEP.';
COMMENT ON COLUMN sedm.IEPGoalDescriptor.IEPGoalDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [sedm].[IEPServicePrescription] --
COMMENT ON TABLE sedm.IEPServicePrescription IS 'The service prescribed to a student as part of their IEP.';
COMMENT ON COLUMN sedm.IEPServicePrescription.IEPFinalizedDate IS 'The date the most recent IEP was finalized.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN sedm.IEPServicePrescription.IEPServicingEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN sedm.IEPServicePrescription.ServicePrescriptionDate IS 'The date the service was prescribed.';
COMMENT ON COLUMN sedm.IEPServicePrescription.ServicePrescriptionDescriptorId IS 'The type of service prescribed. Examples include: Auditory Specialist, Vocational Therapy.';
COMMENT ON COLUMN sedm.IEPServicePrescription.StudentIEPAssociationID IS 'A unique identifier assigned by the provider or source system of IEP services.';
COMMENT ON COLUMN sedm.IEPServicePrescription.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN sedm.IEPServicePrescription.BeginDate IS 'The effective date when service is to begin.';
COMMENT ON COLUMN sedm.IEPServicePrescription.DurationMinutes IS 'The length of time for the prescribed service in minutes.';
COMMENT ON COLUMN sedm.IEPServicePrescription.DurationPeriodDescriptorId IS 'The frequency period for the prescribed service duration. Examples include: Per Session, Per Week, Per Month.';
COMMENT ON COLUMN sedm.IEPServicePrescription.EndDate IS 'The effective date when the prescribed service ended.';
COMMENT ON COLUMN sedm.IEPServicePrescription.FrequencyPeriodDescriptorId IS 'The frequency period for the prescribed service. Examples include: Session, Week, Month.';
COMMENT ON COLUMN sedm.IEPServicePrescription.FrequencyValue IS 'The number of times the prescribed service is to be provided within the specified duration period.';
COMMENT ON COLUMN sedm.IEPServicePrescription.ServiceLocationTypeDescriptorId IS 'The location type where the prescribed service is to be provided. Examples include: Home, Hospital, School.';
COMMENT ON COLUMN sedm.IEPServicePrescription.ServiceProvidingEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN sedm.IEPServicePrescription.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';

-- Extended Properties [sedm].[IEPServicePrescriptionIDEAEvent] --
COMMENT ON TABLE sedm.IEPServicePrescriptionIDEAEvent IS 'A reference to one or more student IDEA events.';
COMMENT ON COLUMN sedm.IEPServicePrescriptionIDEAEvent.IEPFinalizedDate IS 'The date the most recent IEP was finalized.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN sedm.IEPServicePrescriptionIDEAEvent.IEPServicingEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN sedm.IEPServicePrescriptionIDEAEvent.ServicePrescriptionDate IS 'The date the service was prescribed.';
COMMENT ON COLUMN sedm.IEPServicePrescriptionIDEAEvent.ServicePrescriptionDescriptorId IS 'The type of service prescribed. Examples include: Auditory Specialist, Vocational Therapy.';
COMMENT ON COLUMN sedm.IEPServicePrescriptionIDEAEvent.StudentIEPAssociationID IS 'A unique identifier assigned by the provider or source system of IEP services.';
COMMENT ON COLUMN sedm.IEPServicePrescriptionIDEAEvent.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN sedm.IEPServicePrescriptionIDEAEvent.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN sedm.IEPServicePrescriptionIDEAEvent.IDEAEventDescriptorId IS 'The IDEA event recorded for the student.';
COMMENT ON COLUMN sedm.IEPServicePrescriptionIDEAEvent.IDEAEventID IS 'A unique identifier for the event record as assigned by the provider of IEP services.';

-- Extended Properties [sedm].[IEPStatusDescriptor] --
COMMENT ON TABLE sedm.IEPStatusDescriptor IS 'The current status of the student IEP.';
COMMENT ON COLUMN sedm.IEPStatusDescriptor.IEPStatusDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [sedm].[ServiceComplianceDescriptor] --
COMMENT ON TABLE sedm.ServiceComplianceDescriptor IS 'The policy or law for which a prescribed service is compliant.';
COMMENT ON COLUMN sedm.ServiceComplianceDescriptor.ServiceComplianceDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [sedm].[ServiceDeliveryDescriptor] --
COMMENT ON TABLE sedm.ServiceDeliveryDescriptor IS 'The type of service provided to a student.';
COMMENT ON COLUMN sedm.ServiceDeliveryDescriptor.ServiceDeliveryDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [sedm].[ServiceLocationTypeDescriptor] --
COMMENT ON TABLE sedm.ServiceLocationTypeDescriptor IS 'The location type where the prescribed service is to be provided. Examples include: Home, Hospital, School.';
COMMENT ON COLUMN sedm.ServiceLocationTypeDescriptor.ServiceLocationTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [sedm].[ServicePrescriptionDescriptor] --
COMMENT ON TABLE sedm.ServicePrescriptionDescriptor IS 'The type of service prescribed.';
COMMENT ON COLUMN sedm.ServicePrescriptionDescriptor.ServicePrescriptionDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [sedm].[ServiceProviderTypeDescriptor] --
COMMENT ON TABLE sedm.ServiceProviderTypeDescriptor IS 'Indicates service provider type, including specialist, internal staff, external staff, etc.';
COMMENT ON COLUMN sedm.ServiceProviderTypeDescriptor.ServiceProviderTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [sedm].[ServiceReasonDescriptor] --
COMMENT ON TABLE sedm.ServiceReasonDescriptor IS 'Reason the service was prescribed. Examples include: Counselor Assigned, IEP Team Determination.';
COMMENT ON COLUMN sedm.ServiceReasonDescriptor.ServiceReasonDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [sedm].[StudentIEP] --
COMMENT ON TABLE sedm.StudentIEP IS 'This association describes summary IEP data for a student receiving special education services.';
COMMENT ON COLUMN sedm.StudentIEP.IEPFinalizedDate IS 'The date the most recent IEP was finalized.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN sedm.StudentIEP.IEPServicingEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN sedm.StudentIEP.StudentIEPAssociationID IS 'A unique identifier assigned by the provider or source system of IEP services.';
COMMENT ON COLUMN sedm.StudentIEP.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN sedm.StudentIEP.IEPAmendedDate IS 'The date when the most recent IEP was last amended, if any.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN sedm.StudentIEP.IEPBeginDate IS 'The effective start date of the most recent IEP.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN sedm.StudentIEP.IEPEndDate IS 'The effective end date of the most recent IEP.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN sedm.StudentIEP.IEPStatusDescriptorId IS 'The current status of the most recent IEP.';
COMMENT ON COLUMN sedm.StudentIEP.MedicallyFragile IS 'Indicates whether the student receiving special education and related services is: 1) in the age range of birth to 22 years, and 2) has a serious, ongoing illness or a chronic condition that has lasted or is anticipated to last at least 12 or more months or has required at least one month of hospitalization, and that requires daily, ongoing medical treatments and monitoring by appropriately trained personnel which may include parents or other family members, and 3) requires the routine use of medical device or of assistive technology to compensate for the loss of usefulness of a body function needed to participate in activities of daily living, and 4) lives with ongoing threat to his or her continued well-being. Aligns with federal requirements.';
COMMENT ON COLUMN sedm.StudentIEP.MultiplyDisabled IS 'Indicates whether the student receiving special education and related services has been designated as multiply disabled by the admission, review, and dismissal committee as aligned with federal requirements.';
COMMENT ON COLUMN sedm.StudentIEP.ReasonExitedDescriptorId IS 'The reason the student left and stop receiving special education services.';
COMMENT ON COLUMN sedm.StudentIEP.SchoolHoursPerWeek IS 'Indicates the total number of hours of instructional time per week for the school that the student attends.';
COMMENT ON COLUMN sedm.StudentIEP.SpecialEducationHoursPerWeek IS 'Indicates the total number of hours of time per week specific to special education related services.';
COMMENT ON COLUMN sedm.StudentIEP.SpecialEducationSettingDescriptorId IS 'The major instructional setting (more than 50 percent of a student''s special education program).';

-- Extended Properties [sedm].[StudentIEPAccommodation] --
COMMENT ON TABLE sedm.StudentIEPAccommodation IS 'The accommodations prescribed to a student as part of their IEP.';
COMMENT ON COLUMN sedm.StudentIEPAccommodation.IEPFinalizedDate IS 'The date the most recent IEP was finalized.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN sedm.StudentIEPAccommodation.IEPServicingEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN sedm.StudentIEPAccommodation.StudentIEPAssociationID IS 'A unique identifier assigned by the provider or source system of IEP services.';
COMMENT ON COLUMN sedm.StudentIEPAccommodation.StudentUSI IS 'A unique alphanumeric code assigned to a student.';

-- Extended Properties [sedm].[StudentIEPAccommodation] --
COMMENT ON TABLE sedm.StudentIEPAccommodation IS 'The special variation(s) to be used in how various services (in general) are presented, how they are administered, or how the student is allowed to respond. This generally refers to changes that do not substantially alter the content that the service renders. The proper use of accommodations does not substantially change academic level or performance criteria.';
COMMENT ON COLUMN sedm.StudentIEPAccommodation.IEPFinalizedDate IS 'The date the most recent IEP was finalized.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN sedm.StudentIEPAccommodation.IEPServicingEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN sedm.StudentIEPAccommodation.StudentIEPAssociationID IS 'A unique identifier assigned by the provider or source system of IEP services.';
COMMENT ON COLUMN sedm.StudentIEPAccommodation.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN sedm.StudentIEPAccommodation.AccommodationDescriptorId IS 'The special variation(s) to be used in how various services (in general) are presented, how they are administered, or how the student is allowed to respond. This generally refers to changes that do not substantially alter the content that the service renders. The proper use of accommodations does not substantially change academic level or performance criteria.';

-- Extended Properties [sedm].[StudentIEPDisability] --
COMMENT ON TABLE sedm.StudentIEPDisability IS 'The disabilities prescribed to a student as part of their IEP.';
COMMENT ON COLUMN sedm.StudentIEPDisability.IEPFinalizedDate IS 'The date the most recent IEP was finalized.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN sedm.StudentIEPDisability.IEPServicingEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN sedm.StudentIEPDisability.StudentIEPAssociationID IS 'A unique identifier assigned by the provider or source system of IEP services.';
COMMENT ON COLUMN sedm.StudentIEPDisability.StudentUSI IS 'A unique alphanumeric code assigned to a student.';

-- Extended Properties [sedm].[StudentIEPDisability] --
COMMENT ON TABLE sedm.StudentIEPDisability IS 'The disability condition(s) that best describes an individual''s impairment, as related to special education services received.';
COMMENT ON COLUMN sedm.StudentIEPDisability.IEPFinalizedDate IS 'The date the most recent IEP was finalized.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN sedm.StudentIEPDisability.IEPServicingEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN sedm.StudentIEPDisability.StudentIEPAssociationID IS 'A unique identifier assigned by the provider or source system of IEP services.';
COMMENT ON COLUMN sedm.StudentIEPDisability.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN sedm.StudentIEPDisability.DisabilityDescriptorId IS 'A disability category that describes a individual''s impairment.';
COMMENT ON COLUMN sedm.StudentIEPDisability.DisabilityDeterminationSourceTypeDescriptorId IS 'The source that provided the disability determination.';
COMMENT ON COLUMN sedm.StudentIEPDisability.DisabilityDiagnosis IS 'A description of the disability diagnosis.';
COMMENT ON COLUMN sedm.StudentIEPDisability.OrderOfDisability IS 'The order by severity of individual''s disabilities: 1- Primary, 2 -  Secondary, 3 - Tertiary, etc.';

-- Extended Properties [sedm].[StudentIEPDisabilityDesignation] --
COMMENT ON TABLE sedm.StudentIEPDisabilityDesignation IS 'Whether the disability is IDEA, Section 504, or other disability designation.';
COMMENT ON COLUMN sedm.StudentIEPDisabilityDesignation.IEPFinalizedDate IS 'The date the most recent IEP was finalized.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN sedm.StudentIEPDisabilityDesignation.IEPServicingEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN sedm.StudentIEPDisabilityDesignation.StudentIEPAssociationID IS 'A unique identifier assigned by the provider or source system of IEP services.';
COMMENT ON COLUMN sedm.StudentIEPDisabilityDesignation.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN sedm.StudentIEPDisabilityDesignation.DisabilityDescriptorId IS 'A disability category that describes a individual''s impairment.';
COMMENT ON COLUMN sedm.StudentIEPDisabilityDesignation.DisabilityDesignationDescriptorId IS 'Whether the disability is IDEA, Section 504, or other disability designation.';

-- Extended Properties [sedm].[StudentIEPGoal] --
COMMENT ON TABLE sedm.StudentIEPGoal IS 'A goal prescribed to a student as part of their IEP.';
COMMENT ON COLUMN sedm.StudentIEPGoal.IEPFinalizedDate IS 'The date the most recent IEP was finalized.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN sedm.StudentIEPGoal.IEPGoalID IS 'A unique identifier assigned by the provider of IEP services.';
COMMENT ON COLUMN sedm.StudentIEPGoal.IEPServicingEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN sedm.StudentIEPGoal.StudentIEPAssociationID IS 'A unique identifier assigned by the provider or source system of IEP services.';
COMMENT ON COLUMN sedm.StudentIEPGoal.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN sedm.StudentIEPGoal.GoalAchievementPeriodBeginDate IS 'The first date of the period assigned for achieving the stated goal.';
COMMENT ON COLUMN sedm.StudentIEPGoal.GoalAchievementPeriodEndDate IS 'The last date of the period assigned for achieving the stated goal.';
COMMENT ON COLUMN sedm.StudentIEPGoal.IEPGoalDescriptorId IS 'A focused goal prescribed as part of the IEP. Examples include Academic Goal, Behavioral Goal, Attendance Goal.';
COMMENT ON COLUMN sedm.StudentIEPGoal.IEPGoalDetails IS 'Instructions or other details specific to the student and/or provider for achieving the stated goal.';

-- Extended Properties [sedm].[StudentIEPGoalIDEAEvent] --
COMMENT ON TABLE sedm.StudentIEPGoalIDEAEvent IS 'A reference to one or more student IDEA events.';
COMMENT ON COLUMN sedm.StudentIEPGoalIDEAEvent.IEPFinalizedDate IS 'The date the most recent IEP was finalized.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN sedm.StudentIEPGoalIDEAEvent.IEPGoalID IS 'A unique identifier assigned by the provider of IEP services.';
COMMENT ON COLUMN sedm.StudentIEPGoalIDEAEvent.IEPServicingEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN sedm.StudentIEPGoalIDEAEvent.StudentIEPAssociationID IS 'A unique identifier assigned by the provider or source system of IEP services.';
COMMENT ON COLUMN sedm.StudentIEPGoalIDEAEvent.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN sedm.StudentIEPGoalIDEAEvent.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN sedm.StudentIEPGoalIDEAEvent.IDEAEventDescriptorId IS 'The IDEA event recorded for the student.';
COMMENT ON COLUMN sedm.StudentIEPGoalIDEAEvent.IDEAEventID IS 'A unique identifier for the event record as assigned by the provider of IEP services.';

-- Extended Properties [sedm].[StudentIEPIDEAEvent] --
COMMENT ON TABLE sedm.StudentIEPIDEAEvent IS 'A reference to one or more student IDEA events.';
COMMENT ON COLUMN sedm.StudentIEPIDEAEvent.IEPFinalizedDate IS 'The date the most recent IEP was finalized.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN sedm.StudentIEPIDEAEvent.IEPServicingEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN sedm.StudentIEPIDEAEvent.StudentIEPAssociationID IS 'A unique identifier assigned by the provider or source system of IEP services.';
COMMENT ON COLUMN sedm.StudentIEPIDEAEvent.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN sedm.StudentIEPIDEAEvent.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN sedm.StudentIEPIDEAEvent.IDEAEventDescriptorId IS 'The IDEA event recorded for the student.';
COMMENT ON COLUMN sedm.StudentIEPIDEAEvent.IDEAEventID IS 'A unique identifier for the event record as assigned by the provider of IEP services.';

-- Extended Properties [sedm].[StudentIEPServiceDelivery] --
COMMENT ON TABLE sedm.StudentIEPServiceDelivery IS 'Services delivered to a student as prescribed by their IEP.';
COMMENT ON COLUMN sedm.StudentIEPServiceDelivery.IEPFinalizedDate IS 'The date the most recent IEP was finalized.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN sedm.StudentIEPServiceDelivery.IEPServiceDeliveryID IS 'A unique identifier assigned by the provider of IEP services for the delivery record.';
COMMENT ON COLUMN sedm.StudentIEPServiceDelivery.IEPServicingEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN sedm.StudentIEPServiceDelivery.ServiceDeliveryDate IS 'The date when prescribed services were delivered for a student.';
COMMENT ON COLUMN sedm.StudentIEPServiceDelivery.ServiceDeliveryDescriptorId IS 'The type of services delivered to the student.';
COMMENT ON COLUMN sedm.StudentIEPServiceDelivery.StudentIEPAssociationID IS 'A unique identifier assigned by the provider or source system of IEP services.';
COMMENT ON COLUMN sedm.StudentIEPServiceDelivery.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN sedm.StudentIEPServiceDelivery.ServicePrescriptionDate IS 'The date the service was prescribed.';
COMMENT ON COLUMN sedm.StudentIEPServiceDelivery.ServicePrescriptionDescriptorId IS 'The type of service prescribed. Examples include: Auditory Specialist, Vocational Therapy.';
COMMENT ON COLUMN sedm.StudentIEPServiceDelivery.ServiceProviderTypeDescriptorId IS 'Indicates service provider type, including specialist, internal staff, external staff, etc.';

-- Extended Properties [sedm].[StudentIEPServiceDeliveryExternalServiceProvider] --
COMMENT ON TABLE sedm.StudentIEPServiceDeliveryExternalServiceProvider IS 'The external service provider that delivered the prescribed service to the student.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryExternalServiceProvider.IEPFinalizedDate IS 'The date the most recent IEP was finalized.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryExternalServiceProvider.IEPServiceDeliveryID IS 'A unique identifier assigned by the provider of IEP services for the delivery record.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryExternalServiceProvider.IEPServicingEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryExternalServiceProvider.ServiceDeliveryDate IS 'The date when prescribed services were delivered for a student.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryExternalServiceProvider.ServiceDeliveryDescriptorId IS 'The type of services delivered to the student.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryExternalServiceProvider.StudentIEPAssociationID IS 'A unique identifier assigned by the provider or source system of IEP services.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryExternalServiceProvider.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryExternalServiceProvider.ProviderCode IS 'A code assigned to the external service provider.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryExternalServiceProvider.ProviderFirstName IS 'The first name of the external service provider.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryExternalServiceProvider.ProviderLastSurname IS 'The last name of the external service provider.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryExternalServiceProvider.PrimaryProvider IS 'Primary External Service Provider.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryExternalServiceProvider.ProviderMiddleName IS 'The middle name of the external service provider.';

-- Extended Properties [sedm].[StudentIEPServiceDeliveryIDEAEvent] --
COMMENT ON TABLE sedm.StudentIEPServiceDeliveryIDEAEvent IS 'A reference to one or more student IDEA events.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryIDEAEvent.IEPFinalizedDate IS 'The date the most recent IEP was finalized.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryIDEAEvent.IEPServiceDeliveryID IS 'A unique identifier assigned by the provider of IEP services for the delivery record.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryIDEAEvent.IEPServicingEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryIDEAEvent.ServiceDeliveryDate IS 'The date when prescribed services were delivered for a student.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryIDEAEvent.ServiceDeliveryDescriptorId IS 'The type of services delivered to the student.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryIDEAEvent.StudentIEPAssociationID IS 'A unique identifier assigned by the provider or source system of IEP services.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryIDEAEvent.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryIDEAEvent.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryIDEAEvent.IDEAEventDescriptorId IS 'The IDEA event recorded for the student.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryIDEAEvent.IDEAEventID IS 'A unique identifier for the event record as assigned by the provider of IEP services.';

-- Extended Properties [sedm].[StudentIEPServiceDeliveryServiceProvider] --
COMMENT ON TABLE sedm.StudentIEPServiceDeliveryServiceProvider IS 'The internal service provider that delivered the prescribed service to the student.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryServiceProvider.IEPFinalizedDate IS 'The date the most recent IEP was finalized.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryServiceProvider.IEPServiceDeliveryID IS 'A unique identifier assigned by the provider of IEP services for the delivery record.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryServiceProvider.IEPServicingEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryServiceProvider.ServiceDeliveryDate IS 'The date when prescribed services were delivered for a student.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryServiceProvider.ServiceDeliveryDescriptorId IS 'The type of services delivered to the student.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryServiceProvider.StudentIEPAssociationID IS 'A unique identifier assigned by the provider or source system of IEP services.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryServiceProvider.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryServiceProvider.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN sedm.StudentIEPServiceDeliveryServiceProvider.PrimaryProvider IS 'Primary ServiceProvider.';

