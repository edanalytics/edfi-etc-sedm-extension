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

ALTER TABLE sedm.IEPGoalDescriptor ADD CONSTRAINT FK_9eedd8_Descriptor FOREIGN KEY (IEPGoalDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
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

ALTER TABLE sedm.IEPServicePrescription ADD CONSTRAINT FK_3d4921_StudentIEP FOREIGN KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEP (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
;

CREATE INDEX FK_3d4921_StudentIEP
ON sedm.IEPServicePrescription (IEPFinalizedDate ASC, IEPServicingEducationOrganizationId ASC, StudentIEPAssociationID ASC, StudentUSI ASC);

ALTER TABLE sedm.IEPServicePrescriptionIDEAEvent ADD CONSTRAINT FK_95f9cb_IDEAEvent FOREIGN KEY (EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID, StudentUSI)
REFERENCES sedm.IDEAEvent (EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID, StudentUSI)
;

CREATE INDEX FK_95f9cb_IDEAEvent
ON sedm.IEPServicePrescriptionIDEAEvent (EducationOrganizationId ASC, IDEAEventDescriptorId ASC, IDEAEventID ASC, StudentUSI ASC);

ALTER TABLE sedm.IEPServicePrescriptionIDEAEvent ADD CONSTRAINT FK_95f9cb_IEPServicePrescription FOREIGN KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, ServicePrescriptionDate, ServicePrescriptionDescriptorId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.IEPServicePrescription (IEPFinalizedDate, IEPServicingEducationOrganizationId, ServicePrescriptionDate, ServicePrescriptionDescriptorId, StudentIEPAssociationID, StudentUSI)
ON DELETE CASCADE
;

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

ALTER TABLE sedm.ServiceProviderTypeDescriptor ADD CONSTRAINT FK_29f0da_Descriptor FOREIGN KEY (ServiceProviderTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.ServiceReasonDescriptor ADD CONSTRAINT FK_c706a9_Descriptor FOREIGN KEY (ServiceReasonDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.StudentIEP ADD CONSTRAINT FK_d153ae_EducationOrganization FOREIGN KEY (IEPServicingEducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

CREATE INDEX FK_d153ae_EducationOrganization
ON sedm.StudentIEP (IEPServicingEducationOrganizationId ASC);

ALTER TABLE sedm.StudentIEP ADD CONSTRAINT FK_d153ae_IEPStatusDescriptor FOREIGN KEY (IEPStatusDescriptorId)
REFERENCES sedm.IEPStatusDescriptor (IEPStatusDescriptorId)
;

CREATE INDEX FK_d153ae_IEPStatusDescriptor
ON sedm.StudentIEP (IEPStatusDescriptorId ASC);

ALTER TABLE sedm.StudentIEP ADD CONSTRAINT FK_d153ae_ReasonExitedDescriptor FOREIGN KEY (ReasonExitedDescriptorId)
REFERENCES edfi.ReasonExitedDescriptor (ReasonExitedDescriptorId)
;

CREATE INDEX FK_d153ae_ReasonExitedDescriptor
ON sedm.StudentIEP (ReasonExitedDescriptorId ASC);

ALTER TABLE sedm.StudentIEP ADD CONSTRAINT FK_d153ae_SpecialEducationSettingDescriptor FOREIGN KEY (SpecialEducationSettingDescriptorId)
REFERENCES edfi.SpecialEducationSettingDescriptor (SpecialEducationSettingDescriptorId)
;

CREATE INDEX FK_d153ae_SpecialEducationSettingDescriptor
ON sedm.StudentIEP (SpecialEducationSettingDescriptorId ASC);

ALTER TABLE sedm.StudentIEP ADD CONSTRAINT FK_d153ae_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

ALTER TABLE sedm.StudentIEPAccommodation ADD CONSTRAINT FK_9be3b5_EducationOrganization FOREIGN KEY (IEPServicingEducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

CREATE INDEX FK_9be3b5_EducationOrganization
ON sedm.StudentIEPAccommodation (IEPServicingEducationOrganizationId ASC);

ALTER TABLE sedm.StudentIEPAccommodation ADD CONSTRAINT FK_9be3b5_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

ALTER TABLE sedm.StudentIEPAccommodation ADD CONSTRAINT FK_9be3b5_StudentIEP FOREIGN KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEP (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
;

ALTER TABLE sedm.StudentIEPAccommodation ADD CONSTRAINT FK_d47c83_AccommodationDescriptor FOREIGN KEY (AccommodationDescriptorId)
REFERENCES edfi.AccommodationDescriptor (AccommodationDescriptorId)
;

CREATE INDEX FK_d47c83_AccommodationDescriptor
ON sedm.StudentIEPAccommodation (AccommodationDescriptorId ASC);

ALTER TABLE sedm.StudentIEPAccommodation ADD CONSTRAINT FK_d47c83_StudentIEPAccommodation FOREIGN KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEPAccommodation (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
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

ALTER TABLE sedm.StudentIEPDisability ADD CONSTRAINT FK_9fbb10_StudentIEP FOREIGN KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEP (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
;

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

ALTER TABLE sedm.StudentIEPDisability ADD CONSTRAINT FK_1a487a_StudentIEPDisability FOREIGN KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEPDisability (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE sedm.StudentIEPDisabilityDesignation ADD CONSTRAINT FK_9ad1d8_DisabilityDesignationDescriptor FOREIGN KEY (DisabilityDesignationDescriptorId)
REFERENCES edfi.DisabilityDesignationDescriptor (DisabilityDesignationDescriptorId)
;

CREATE INDEX FK_9ad1d8_DisabilityDesignationDescriptor
ON sedm.StudentIEPDisabilityDesignation (DisabilityDesignationDescriptorId ASC);

ALTER TABLE sedm.StudentIEPDisabilityDesignation ADD CONSTRAINT FK_9ad1d8_StudentIEPDisability FOREIGN KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI, DisabilityDescriptorId)
REFERENCES sedm.StudentIEPDisability (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI, DisabilityDescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.StudentIEPGoal ADD CONSTRAINT FK_5453a5_IEPGoalDescriptor FOREIGN KEY (IEPGoalDescriptorId)
REFERENCES sedm.IEPGoalDescriptor (IEPGoalDescriptorId)
;

CREATE INDEX FK_5453a5_IEPGoalDescriptor
ON sedm.StudentIEPGoal (IEPGoalDescriptorId ASC);

ALTER TABLE sedm.StudentIEPGoal ADD CONSTRAINT FK_5453a5_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

ALTER TABLE sedm.StudentIEPGoal ADD CONSTRAINT FK_5453a5_StudentIEP FOREIGN KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEP (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
;

CREATE INDEX FK_5453a5_StudentIEP
ON sedm.StudentIEPGoal (IEPFinalizedDate ASC, IEPServicingEducationOrganizationId ASC, StudentIEPAssociationID ASC, StudentUSI ASC);

ALTER TABLE sedm.StudentIEPGoalIDEAEvent ADD CONSTRAINT FK_77bb8b_IDEAEvent FOREIGN KEY (EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID, StudentUSI)
REFERENCES sedm.IDEAEvent (EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID, StudentUSI)
;

CREATE INDEX FK_77bb8b_IDEAEvent
ON sedm.StudentIEPGoalIDEAEvent (EducationOrganizationId ASC, IDEAEventDescriptorId ASC, IDEAEventID ASC, StudentUSI ASC);

ALTER TABLE sedm.StudentIEPGoalIDEAEvent ADD CONSTRAINT FK_77bb8b_StudentIEPGoal FOREIGN KEY (IEPFinalizedDate, IEPGoalID, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEPGoal (IEPFinalizedDate, IEPGoalID, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE sedm.StudentIEPIDEAEvent ADD CONSTRAINT FK_879a3f_IDEAEvent FOREIGN KEY (EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID, StudentUSI)
REFERENCES sedm.IDEAEvent (EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID, StudentUSI)
;

CREATE INDEX FK_879a3f_IDEAEvent
ON sedm.StudentIEPIDEAEvent (EducationOrganizationId ASC, IDEAEventDescriptorId ASC, IDEAEventID ASC, StudentUSI ASC);

ALTER TABLE sedm.StudentIEPIDEAEvent ADD CONSTRAINT FK_879a3f_StudentIEP FOREIGN KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEP (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE sedm.StudentIEPServiceDelivery ADD CONSTRAINT FK_524fcd_IEPServicePrescription FOREIGN KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, ServicePrescriptionDate, ServicePrescriptionDescriptorId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.IEPServicePrescription (IEPFinalizedDate, IEPServicingEducationOrganizationId, ServicePrescriptionDate, ServicePrescriptionDescriptorId, StudentIEPAssociationID, StudentUSI)
;

CREATE INDEX FK_524fcd_IEPServicePrescription
ON sedm.StudentIEPServiceDelivery (IEPFinalizedDate ASC, IEPServicingEducationOrganizationId ASC, ServicePrescriptionDate ASC, ServicePrescriptionDescriptorId ASC, StudentIEPAssociationID ASC, StudentUSI ASC);

ALTER TABLE sedm.StudentIEPServiceDelivery ADD CONSTRAINT FK_524fcd_ServiceDeliveryDescriptor FOREIGN KEY (ServiceDeliveryDescriptorId)
REFERENCES sedm.ServiceDeliveryDescriptor (ServiceDeliveryDescriptorId)
;

CREATE INDEX FK_524fcd_ServiceDeliveryDescriptor
ON sedm.StudentIEPServiceDelivery (ServiceDeliveryDescriptorId ASC);

ALTER TABLE sedm.StudentIEPServiceDelivery ADD CONSTRAINT FK_524fcd_ServiceProviderTypeDescriptor FOREIGN KEY (ServiceProviderTypeDescriptorId)
REFERENCES sedm.ServiceProviderTypeDescriptor (ServiceProviderTypeDescriptorId)
;

CREATE INDEX FK_524fcd_ServiceProviderTypeDescriptor
ON sedm.StudentIEPServiceDelivery (ServiceProviderTypeDescriptorId ASC);

ALTER TABLE sedm.StudentIEPServiceDelivery ADD CONSTRAINT FK_524fcd_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

ALTER TABLE sedm.StudentIEPServiceDelivery ADD CONSTRAINT FK_524fcd_StudentIEP FOREIGN KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEP (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
;

CREATE INDEX FK_524fcd_StudentIEP
ON sedm.StudentIEPServiceDelivery (IEPFinalizedDate ASC, IEPServicingEducationOrganizationId ASC, StudentIEPAssociationID ASC, StudentUSI ASC);

ALTER TABLE sedm.StudentIEPServiceDeliveryExternalServiceProvider ADD CONSTRAINT FK_fd62fe_StudentIEPServiceDelivery FOREIGN KEY (IEPFinalizedDate, IEPServiceDeliveryID, IEPServicingEducationOrganizationId, ServiceDeliveryDate, ServiceDeliveryDescriptorId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEPServiceDelivery (IEPFinalizedDate, IEPServiceDeliveryID, IEPServicingEducationOrganizationId, ServiceDeliveryDate, ServiceDeliveryDescriptorId, StudentIEPAssociationID, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE sedm.StudentIEPServiceDeliveryIDEAEvent ADD CONSTRAINT FK_a62d81_IDEAEvent FOREIGN KEY (EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID, StudentUSI)
REFERENCES sedm.IDEAEvent (EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID, StudentUSI)
;

CREATE INDEX FK_a62d81_IDEAEvent
ON sedm.StudentIEPServiceDeliveryIDEAEvent (EducationOrganizationId ASC, IDEAEventDescriptorId ASC, IDEAEventID ASC, StudentUSI ASC);

ALTER TABLE sedm.StudentIEPServiceDeliveryIDEAEvent ADD CONSTRAINT FK_a62d81_StudentIEPServiceDelivery FOREIGN KEY (IEPFinalizedDate, IEPServiceDeliveryID, IEPServicingEducationOrganizationId, ServiceDeliveryDate, ServiceDeliveryDescriptorId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEPServiceDelivery (IEPFinalizedDate, IEPServiceDeliveryID, IEPServicingEducationOrganizationId, ServiceDeliveryDate, ServiceDeliveryDescriptorId, StudentIEPAssociationID, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE sedm.StudentIEPServiceDeliveryServiceProvider ADD CONSTRAINT FK_2c2936_Staff FOREIGN KEY (StaffUSI)
REFERENCES edfi.Staff (StaffUSI)
;

CREATE INDEX FK_2c2936_Staff
ON sedm.StudentIEPServiceDeliveryServiceProvider (StaffUSI ASC);

ALTER TABLE sedm.StudentIEPServiceDeliveryServiceProvider ADD CONSTRAINT FK_2c2936_StudentIEPServiceDelivery FOREIGN KEY (IEPFinalizedDate, IEPServiceDeliveryID, IEPServicingEducationOrganizationId, ServiceDeliveryDate, ServiceDeliveryDescriptorId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEPServiceDelivery (IEPFinalizedDate, IEPServiceDeliveryID, IEPServicingEducationOrganizationId, ServiceDeliveryDate, ServiceDeliveryDescriptorId, StudentIEPAssociationID, StudentUSI)
ON DELETE CASCADE
;

