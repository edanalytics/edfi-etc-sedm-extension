
CREATE INDEX IF NOT EXISTS IX_IDEAEvent_EducationOrganizationId ON sedm.IDEAEvent(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_IEPServicePrescription_IEPServicingEducationOrganizationId ON sedm.IEPServicePrescription(IEPServicingEducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_StudentIEPGoal_IEPServicingEducationOrganizationId ON sedm.StudentIEPGoal(IEPServicingEducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_StudentIEPServiceDelivery_IEPServicingEducationOrganizationId ON sedm.StudentIEPServiceDelivery(IEPServicingEducationOrganizationId) INCLUDE (Id);
