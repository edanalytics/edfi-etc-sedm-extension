
DROP INDEX IF EXISTS IX_IDEAEvent_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_IDEAEvent_EducationOrganizationId ON sedm.IDEAEvent(EducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_IDEAEvent_StudentUSI ON sedm.IDEAEvent(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_IEPServicePrescription_IEPServicingEducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_IEPServicePrescription_IEPServicingEducationOrganizationId ON sedm.IEPServicePrescription(IEPServicingEducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_IEPServicePrescription_StudentUSI ON sedm.IEPServicePrescription(StudentUSI) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_IEPServicePrescription_StaffUSI ON sedm.IEPServicePrescription(StaffUSI) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StudentIEP_StudentUSI ON sedm.StudentIEP(StudentUSI) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StudentIEPAccommodation_StudentUSI ON sedm.StudentIEPAccommodation(StudentUSI) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StudentIEPDisability_StudentUSI ON sedm.StudentIEPDisability(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentIEPGoal_IEPServicingEducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_StudentIEPGoal_IEPServicingEducationOrganizationId ON sedm.StudentIEPGoal(IEPServicingEducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StudentIEPGoal_StudentUSI ON sedm.StudentIEPGoal(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentIEPServiceDelivery_IEPServicingEducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_StudentIEPServiceDelivery_IEPServicingEducationOrganizationId ON sedm.StudentIEPServiceDelivery(IEPServicingEducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StudentIEPServiceDelivery_StudentUSI ON sedm.StudentIEPServiceDelivery(StudentUSI) INCLUDE (AggregateId);
