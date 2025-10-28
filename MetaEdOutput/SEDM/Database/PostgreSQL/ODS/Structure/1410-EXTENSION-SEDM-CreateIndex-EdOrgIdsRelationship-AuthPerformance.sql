
CREATE INDEX IF NOT EXISTS IX_IDEAEvent_EducationOrganizationId ON sedm.IDEAEvent(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_IEPGoal_EducationOrganizationId ON sedm.IEPGoal(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_IEPGoal_IEPServicingEducationOrganizationId ON sedm.IEPGoal(IEPServicingEducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_IEPServiceDelivery_EducationOrganizationId ON sedm.IEPServiceDelivery(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_IEPServiceDelivery_IEPServicingEducationOrganizationId ON sedm.IEPServiceDelivery(IEPServicingEducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_IEPServicePrescription_EducationOrganizationId ON sedm.IEPServicePrescription(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_IEPServicePrescription_IEPServicingEducationOrganizationId ON sedm.IEPServicePrescription(IEPServicingEducationOrganizationId) INCLUDE (Id);
