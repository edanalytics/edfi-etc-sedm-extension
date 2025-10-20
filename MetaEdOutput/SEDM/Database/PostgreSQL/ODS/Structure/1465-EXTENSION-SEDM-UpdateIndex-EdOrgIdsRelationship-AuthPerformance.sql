
DROP INDEX IF EXISTS IX_IDEAEvent_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_IDEAEvent_EducationOrganizationId ON sedm.IDEAEvent(EducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_IDEAEvent_StudentUSI ON sedm.IDEAEvent(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_IEPGoal_IEPServicingEducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_IEPGoal_IEPServicingEducationOrganizationId ON sedm.IEPGoal(IEPServicingEducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_IEPGoal_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_IEPGoal_EducationOrganizationId ON sedm.IEPGoal(EducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_IEPGoal_StudentUSI ON sedm.IEPGoal(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_IEPServiceDelivery_IEPServicingEducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_IEPServiceDelivery_IEPServicingEducationOrganizationId ON sedm.IEPServiceDelivery(IEPServicingEducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_IEPServiceDelivery_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_IEPServiceDelivery_EducationOrganizationId ON sedm.IEPServiceDelivery(EducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_IEPServiceDelivery_StudentUSI ON sedm.IEPServiceDelivery(StudentUSI) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_IEPServiceDelivery_ServiceDeliveryStaffUSI ON sedm.IEPServiceDelivery(ServiceDeliveryStaffUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_IEPServicePrescription_IEPServicingEducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_IEPServicePrescription_IEPServicingEducationOrganizationId ON sedm.IEPServicePrescription(IEPServicingEducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_IEPServicePrescription_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_IEPServicePrescription_EducationOrganizationId ON sedm.IEPServicePrescription(EducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_IEPServicePrescription_StudentUSI ON sedm.IEPServicePrescription(StudentUSI) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_IEPServicePrescription_StaffUSI ON sedm.IEPServicePrescription(StaffUSI) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StudentIEPAccommodation_StudentUSI ON sedm.StudentIEPAccommodation(StudentUSI) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StudentIEPAssociation_StudentUSI ON sedm.StudentIEPAssociation(StudentUSI) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StudentIEPDisability_StudentUSI ON sedm.StudentIEPDisability(StudentUSI) INCLUDE (AggregateId);
