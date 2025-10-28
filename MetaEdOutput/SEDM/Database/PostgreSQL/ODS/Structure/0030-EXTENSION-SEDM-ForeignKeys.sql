ALTER TABLE sedm.DurationPeriodDescriptor ADD CONSTRAINT FK_d4922a_Descriptor FOREIGN KEY (DurationPeriodDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.EventComplianceDescriptor ADD CONSTRAINT FK_dd7d39_Descriptor FOREIGN KEY (EventComplianceDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.EventReasonDescriptor ADD CONSTRAINT FK_ee5ffc_Descriptor FOREIGN KEY (EventReasonDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.FrequencyPeriodDescriptor ADD CONSTRAINT FK_2a4712_Descriptor FOREIGN KEY (FrequencyPeriodDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.IDEAEvent ADD CONSTRAINT FK_a16a88_EducationOrganization FOREIGN KEY (EducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

ALTER TABLE sedm.IDEAEvent ADD CONSTRAINT FK_a16a88_EventComplianceDescriptor FOREIGN KEY (EventComplianceDescriptorId)
REFERENCES sedm.EventComplianceDescriptor (EventComplianceDescriptorId)
;

CREATE INDEX FK_a16a88_EventComplianceDescriptor
ON sedm.IDEAEvent (EventComplianceDescriptorId ASC);

ALTER TABLE sedm.IDEAEvent ADD CONSTRAINT FK_a16a88_EventReasonDescriptor FOREIGN KEY (EventReasonDescriptorId)
REFERENCES sedm.EventReasonDescriptor (EventReasonDescriptorId)
;

CREATE INDEX FK_a16a88_EventReasonDescriptor
ON sedm.IDEAEvent (EventReasonDescriptorId ASC);

ALTER TABLE sedm.IDEAEvent ADD CONSTRAINT FK_a16a88_IDEAEventDescriptor FOREIGN KEY (IDEAEventDescriptorId)
REFERENCES sedm.IDEAEventDescriptor (IDEAEventDescriptorId)
;

CREATE INDEX FK_a16a88_IDEAEventDescriptor
ON sedm.IDEAEvent (IDEAEventDescriptorId ASC);

ALTER TABLE sedm.IDEAEvent ADD CONSTRAINT FK_a16a88_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

ALTER TABLE sedm.IDEAEventDescriptor ADD CONSTRAINT FK_cbac23_Descriptor FOREIGN KEY (IDEAEventDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.IEPGoal ADD CONSTRAINT FK_dcdf59_IDEAEvent FOREIGN KEY (EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID, StudentUSI)
REFERENCES sedm.IDEAEvent (EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID, StudentUSI)
;

CREATE INDEX FK_dcdf59_IDEAEvent
ON sedm.IEPGoal (EducationOrganizationId ASC, IDEAEventDescriptorId ASC, IDEAEventID ASC, StudentUSI ASC);

ALTER TABLE sedm.IEPGoal ADD CONSTRAINT FK_dcdf59_IEPGoalDescriptor FOREIGN KEY (IEPGoalDescriptorId)
REFERENCES sedm.IEPGoalDescriptor (IEPGoalDescriptorId)
;

CREATE INDEX FK_dcdf59_IEPGoalDescriptor
ON sedm.IEPGoal (IEPGoalDescriptorId ASC);

ALTER TABLE sedm.IEPGoal ADD CONSTRAINT FK_dcdf59_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

ALTER TABLE sedm.IEPGoal ADD CONSTRAINT FK_dcdf59_StudentIEPAssociation FOREIGN KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEPAssociation (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
;

CREATE INDEX FK_dcdf59_StudentIEPAssociation
ON sedm.IEPGoal (IEPFinalizedDate ASC, IEPServicingEducationOrganizationId ASC, StudentIEPAssociationID ASC, StudentUSI ASC);

ALTER TABLE sedm.IEPGoalDescriptor ADD CONSTRAINT FK_9eedd8_Descriptor FOREIGN KEY (IEPGoalDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.IEPServiceDelivery ADD CONSTRAINT FK_35f795_IDEAEvent FOREIGN KEY (EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID, StudentUSI)
REFERENCES sedm.IDEAEvent (EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID, StudentUSI)
;

CREATE INDEX FK_35f795_IDEAEvent
ON sedm.IEPServiceDelivery (EducationOrganizationId ASC, IDEAEventDescriptorId ASC, IDEAEventID ASC, StudentUSI ASC);

ALTER TABLE sedm.IEPServiceDelivery ADD CONSTRAINT FK_35f795_IEPServicePrescription FOREIGN KEY (ServicePrescriptionDate, ServicePrescriptionDescriptorId, StudentUSI)
REFERENCES sedm.IEPServicePrescription (ServicePrescriptionDate, ServicePrescriptionDescriptorId, StudentUSI)
;

CREATE INDEX FK_35f795_IEPServicePrescription
ON sedm.IEPServiceDelivery (ServicePrescriptionDate ASC, ServicePrescriptionDescriptorId ASC, StudentUSI ASC);

ALTER TABLE sedm.IEPServiceDelivery ADD CONSTRAINT FK_35f795_ServiceDeliveryDescriptor FOREIGN KEY (ServiceDeliveryDescriptorId)
REFERENCES sedm.ServiceDeliveryDescriptor (ServiceDeliveryDescriptorId)
;

CREATE INDEX FK_35f795_ServiceDeliveryDescriptor
ON sedm.IEPServiceDelivery (ServiceDeliveryDescriptorId ASC);

ALTER TABLE sedm.IEPServiceDelivery ADD CONSTRAINT FK_35f795_ServiceProviderDescriptor FOREIGN KEY (ServiceProviderDescriptorId)
REFERENCES sedm.ServiceProviderDescriptor (ServiceProviderDescriptorId)
;

CREATE INDEX FK_35f795_ServiceProviderDescriptor
ON sedm.IEPServiceDelivery (ServiceProviderDescriptorId ASC);

ALTER TABLE sedm.IEPServiceDelivery ADD CONSTRAINT FK_35f795_Staff FOREIGN KEY (ServiceDeliveryStaffUSI)
REFERENCES edfi.Staff (StaffUSI)
;

CREATE INDEX FK_35f795_Staff
ON sedm.IEPServiceDelivery (ServiceDeliveryStaffUSI ASC);

ALTER TABLE sedm.IEPServiceDelivery ADD CONSTRAINT FK_35f795_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

CREATE INDEX FK_35f795_Student
ON sedm.IEPServiceDelivery (StudentUSI ASC);

ALTER TABLE sedm.IEPServiceDelivery ADD CONSTRAINT FK_35f795_StudentIEPAssociation FOREIGN KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEPAssociation (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
;

CREATE INDEX FK_35f795_StudentIEPAssociation
ON sedm.IEPServiceDelivery (IEPFinalizedDate ASC, IEPServicingEducationOrganizationId ASC, StudentIEPAssociationID ASC, StudentUSI ASC);

ALTER TABLE sedm.IEPServiceDeliveryExternalServiceProvider ADD CONSTRAINT FK_1f5076_IEPServiceDelivery FOREIGN KEY (IEPServiceDeliveryID, ServiceDeliveryDate, ServiceDeliveryDescriptorId, StudentUSI)
REFERENCES sedm.IEPServiceDelivery (IEPServiceDeliveryID, ServiceDeliveryDate, ServiceDeliveryDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE sedm.IEPServicePrescription ADD CONSTRAINT FK_3d4921_DurationPeriodDescriptor FOREIGN KEY (DurationPeriodDescriptorId)
REFERENCES sedm.DurationPeriodDescriptor (DurationPeriodDescriptorId)
;

CREATE INDEX FK_3d4921_DurationPeriodDescriptor
ON sedm.IEPServicePrescription (DurationPeriodDescriptorId ASC);

ALTER TABLE sedm.IEPServicePrescription ADD CONSTRAINT FK_3d4921_EducationOrganization FOREIGN KEY (ServiceProvidingEducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

CREATE INDEX FK_3d4921_EducationOrganization
ON sedm.IEPServicePrescription (ServiceProvidingEducationOrganizationId ASC);

ALTER TABLE sedm.IEPServicePrescription ADD CONSTRAINT FK_3d4921_FrequencyPeriodDescriptor FOREIGN KEY (FrequencyPeriodDescriptorId)
REFERENCES sedm.FrequencyPeriodDescriptor (FrequencyPeriodDescriptorId)
;

CREATE INDEX FK_3d4921_FrequencyPeriodDescriptor
ON sedm.IEPServicePrescription (FrequencyPeriodDescriptorId ASC);

ALTER TABLE sedm.IEPServicePrescription ADD CONSTRAINT FK_3d4921_IDEAEvent FOREIGN KEY (EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID, StudentUSI)
REFERENCES sedm.IDEAEvent (EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID, StudentUSI)
;

CREATE INDEX FK_3d4921_IDEAEvent
ON sedm.IEPServicePrescription (EducationOrganizationId ASC, IDEAEventDescriptorId ASC, IDEAEventID ASC, StudentUSI ASC);

ALTER TABLE sedm.IEPServicePrescription ADD CONSTRAINT FK_3d4921_ServiceLocationTypeDescriptor FOREIGN KEY (ServiceLocationTypeDescriptorId)
REFERENCES sedm.ServiceLocationTypeDescriptor (ServiceLocationTypeDescriptorId)
;

CREATE INDEX FK_3d4921_ServiceLocationTypeDescriptor
ON sedm.IEPServicePrescription (ServiceLocationTypeDescriptorId ASC);

ALTER TABLE sedm.IEPServicePrescription ADD CONSTRAINT FK_3d4921_ServicePrescriptionDescriptor FOREIGN KEY (ServicePrescriptionDescriptorId)
REFERENCES sedm.ServicePrescriptionDescriptor (ServicePrescriptionDescriptorId)
;

CREATE INDEX FK_3d4921_ServicePrescriptionDescriptor
ON sedm.IEPServicePrescription (ServicePrescriptionDescriptorId ASC);

ALTER TABLE sedm.IEPServicePrescription ADD CONSTRAINT FK_3d4921_Staff FOREIGN KEY (StaffUSI)
REFERENCES edfi.Staff (StaffUSI)
;

CREATE INDEX FK_3d4921_Staff
ON sedm.IEPServicePrescription (StaffUSI ASC);

ALTER TABLE sedm.IEPServicePrescription ADD CONSTRAINT FK_3d4921_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

CREATE INDEX FK_3d4921_Student
ON sedm.IEPServicePrescription (StudentUSI ASC);

ALTER TABLE sedm.IEPServicePrescription ADD CONSTRAINT FK_3d4921_StudentIEPAssociation FOREIGN KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEPAssociation (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
;

CREATE INDEX FK_3d4921_StudentIEPAssociation
ON sedm.IEPServicePrescription (IEPFinalizedDate ASC, IEPServicingEducationOrganizationId ASC, StudentIEPAssociationID ASC, StudentUSI ASC);

ALTER TABLE sedm.IEPStatusDescriptor ADD CONSTRAINT FK_275df5_Descriptor FOREIGN KEY (IEPStatusDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.ServiceComplianceDescriptor ADD CONSTRAINT FK_437395_Descriptor FOREIGN KEY (ServiceComplianceDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.ServiceDeliveryDescriptor ADD CONSTRAINT FK_f9317e_Descriptor FOREIGN KEY (ServiceDeliveryDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.ServiceLocationTypeDescriptor ADD CONSTRAINT FK_b52e9c_Descriptor FOREIGN KEY (ServiceLocationTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.ServicePrescriptionDescriptor ADD CONSTRAINT FK_e93574_Descriptor FOREIGN KEY (ServicePrescriptionDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.ServiceProviderDescriptor ADD CONSTRAINT FK_da8daa_Descriptor FOREIGN KEY (ServiceProviderDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.ServiceReasonDescriptor ADD CONSTRAINT FK_c706a9_Descriptor FOREIGN KEY (ServiceReasonDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.StudentIEPAccommodation ADD CONSTRAINT FK_9be3b5_EducationOrganization FOREIGN KEY (IEPServicingEducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

CREATE INDEX FK_9be3b5_EducationOrganization
ON sedm.StudentIEPAccommodation (IEPServicingEducationOrganizationId ASC);

ALTER TABLE sedm.StudentIEPAccommodation ADD CONSTRAINT FK_9be3b5_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

ALTER TABLE sedm.StudentIEPAccommodation ADD CONSTRAINT FK_9be3b5_StudentIEPAssociation FOREIGN KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEPAssociation (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
;

CREATE INDEX FK_9be3b5_StudentIEPAssociation
ON sedm.StudentIEPAccommodation (IEPFinalizedDate ASC, IEPServicingEducationOrganizationId ASC, StudentIEPAssociationID ASC, StudentUSI ASC);

ALTER TABLE sedm.StudentIEPAccommodation ADD CONSTRAINT FK_d47c83_AccommodationDescriptor FOREIGN KEY (AccommodationDescriptorId)
REFERENCES edfi.AccommodationDescriptor (AccommodationDescriptorId)
;

CREATE INDEX FK_d47c83_AccommodationDescriptor
ON sedm.StudentIEPAccommodation (AccommodationDescriptorId ASC);

ALTER TABLE sedm.StudentIEPAccommodation ADD CONSTRAINT FK_d47c83_StudentIEPAccommodation FOREIGN KEY (IEPServicingEducationOrganizationId, StudentUSI)
REFERENCES sedm.StudentIEPAccommodation (IEPServicingEducationOrganizationId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE sedm.StudentIEPAssociation ADD CONSTRAINT FK_296761_EducationOrganization FOREIGN KEY (IEPServicingEducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

CREATE INDEX FK_296761_EducationOrganization
ON sedm.StudentIEPAssociation (IEPServicingEducationOrganizationId ASC);

ALTER TABLE sedm.StudentIEPAssociation ADD CONSTRAINT FK_296761_IEPStatusDescriptor FOREIGN KEY (IEPStatusDescriptorId)
REFERENCES sedm.IEPStatusDescriptor (IEPStatusDescriptorId)
;

CREATE INDEX FK_296761_IEPStatusDescriptor
ON sedm.StudentIEPAssociation (IEPStatusDescriptorId ASC);

ALTER TABLE sedm.StudentIEPAssociation ADD CONSTRAINT FK_296761_ReasonExitedDescriptor FOREIGN KEY (ReasonExitedDescriptorId)
REFERENCES edfi.ReasonExitedDescriptor (ReasonExitedDescriptorId)
;

CREATE INDEX FK_296761_ReasonExitedDescriptor
ON sedm.StudentIEPAssociation (ReasonExitedDescriptorId ASC);

ALTER TABLE sedm.StudentIEPAssociation ADD CONSTRAINT FK_296761_SpecialEducationSettingDescriptor FOREIGN KEY (SpecialEducationSettingDescriptorId)
REFERENCES edfi.SpecialEducationSettingDescriptor (SpecialEducationSettingDescriptorId)
;

CREATE INDEX FK_296761_SpecialEducationSettingDescriptor
ON sedm.StudentIEPAssociation (SpecialEducationSettingDescriptorId ASC);

ALTER TABLE sedm.StudentIEPAssociation ADD CONSTRAINT FK_296761_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

ALTER TABLE sedm.StudentIEPAssociationIDEAEvent ADD CONSTRAINT FK_4d1a86_IDEAEvent FOREIGN KEY (EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID, StudentUSI)
REFERENCES sedm.IDEAEvent (EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID, StudentUSI)
;

CREATE INDEX FK_4d1a86_IDEAEvent
ON sedm.StudentIEPAssociationIDEAEvent (EducationOrganizationId ASC, IDEAEventDescriptorId ASC, IDEAEventID ASC, StudentUSI ASC);

ALTER TABLE sedm.StudentIEPAssociationIDEAEvent ADD CONSTRAINT FK_4d1a86_StudentIEPAssociation FOREIGN KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEPAssociation (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE sedm.StudentIEPDisability ADD CONSTRAINT FK_9fbb10_EducationOrganization FOREIGN KEY (IEPServicingEducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

CREATE INDEX FK_9fbb10_EducationOrganization
ON sedm.StudentIEPDisability (IEPServicingEducationOrganizationId ASC);

ALTER TABLE sedm.StudentIEPDisability ADD CONSTRAINT FK_9fbb10_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

ALTER TABLE sedm.StudentIEPDisability ADD CONSTRAINT FK_9fbb10_StudentIEPAssociation FOREIGN KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEPAssociation (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
;

CREATE INDEX FK_9fbb10_StudentIEPAssociation
ON sedm.StudentIEPDisability (IEPFinalizedDate ASC, IEPServicingEducationOrganizationId ASC, StudentIEPAssociationID ASC, StudentUSI ASC);

ALTER TABLE sedm.StudentIEPDisability ADD CONSTRAINT FK_1a487a_DisabilityDescriptor FOREIGN KEY (DisabilityDescriptorId)
REFERENCES edfi.DisabilityDescriptor (DisabilityDescriptorId)
;

CREATE INDEX FK_1a487a_DisabilityDescriptor
ON sedm.StudentIEPDisability (DisabilityDescriptorId ASC);

ALTER TABLE sedm.StudentIEPDisability ADD CONSTRAINT FK_1a487a_DisabilityDeterminationSourceTypeDescriptor FOREIGN KEY (DisabilityDeterminationSourceTypeDescriptorId)
REFERENCES edfi.DisabilityDeterminationSourceTypeDescriptor (DisabilityDeterminationSourceTypeDescriptorId)
;

CREATE INDEX FK_1a487a_DisabilityDeterminationSourceTypeDescriptor
ON sedm.StudentIEPDisability (DisabilityDeterminationSourceTypeDescriptorId ASC);

ALTER TABLE sedm.StudentIEPDisability ADD CONSTRAINT FK_1a487a_StudentIEPDisability FOREIGN KEY (IEPServicingEducationOrganizationId, StudentUSI)
REFERENCES sedm.StudentIEPDisability (IEPServicingEducationOrganizationId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE sedm.StudentIEPDisabilityDesignation ADD CONSTRAINT FK_9ad1d8_DisabilityDesignationDescriptor FOREIGN KEY (DisabilityDesignationDescriptorId)
REFERENCES edfi.DisabilityDesignationDescriptor (DisabilityDesignationDescriptorId)
;

CREATE INDEX FK_9ad1d8_DisabilityDesignationDescriptor
ON sedm.StudentIEPDisabilityDesignation (DisabilityDesignationDescriptorId ASC);

ALTER TABLE sedm.StudentIEPDisabilityDesignation ADD CONSTRAINT FK_9ad1d8_StudentIEPDisability FOREIGN KEY (IEPServicingEducationOrganizationId, StudentUSI, DisabilityDescriptorId)
REFERENCES sedm.StudentIEPDisability (IEPServicingEducationOrganizationId, StudentUSI, DisabilityDescriptorId)
ON DELETE CASCADE
;

