ALTER TABLE sedm.EventComplianceDescriptor ADD CONSTRAINT FK_dd7d39_Descriptor FOREIGN KEY (EventComplianceDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.EventReasonDescriptor ADD CONSTRAINT FK_ee5ffc_Descriptor FOREIGN KEY (EventReasonDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.IDEAEventDescriptor ADD CONSTRAINT FK_cbac23_Descriptor FOREIGN KEY (IDEAEventDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.IEPGoalDescriptor ADD CONSTRAINT FK_9eedd8_Descriptor FOREIGN KEY (IEPGoalDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
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

