
DROP INDEX IF EXISTS IX_IDEAEvent_EducationOrganizationId ON [sedm].[IDEAEvent];
CREATE INDEX IX_IDEAEvent_EducationOrganizationId ON [sedm].[IDEAEvent](EducationOrganizationId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_IDEAEvent_StudentUSI' AND object_id = OBJECT_ID('sedm.IDEAEvent')) 
BEGIN
    CREATE INDEX IX_IDEAEvent_StudentUSI ON [sedm].[IDEAEvent](StudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_IEPServicePrescription_IEPServicingEducationOrganizationId ON [sedm].[IEPServicePrescription];
CREATE INDEX IX_IEPServicePrescription_IEPServicingEducationOrganizationId ON [sedm].[IEPServicePrescription](IEPServicingEducationOrganizationId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_IEPServicePrescription_StudentUSI' AND object_id = OBJECT_ID('sedm.IEPServicePrescription')) 
BEGIN
    CREATE INDEX IX_IEPServicePrescription_StudentUSI ON [sedm].[IEPServicePrescription](StudentUSI) INCLUDE (AggregateId)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_IEPServicePrescription_StaffUSI' AND object_id = OBJECT_ID('sedm.IEPServicePrescription')) 
BEGIN
    CREATE INDEX IX_IEPServicePrescription_StaffUSI ON [sedm].[IEPServicePrescription](StaffUSI) INCLUDE (AggregateId)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentIEP_StudentUSI' AND object_id = OBJECT_ID('sedm.StudentIEP')) 
BEGIN
    CREATE INDEX IX_StudentIEP_StudentUSI ON [sedm].[StudentIEP](StudentUSI) INCLUDE (AggregateId)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentIEPAccommodation_StudentUSI' AND object_id = OBJECT_ID('sedm.StudentIEPAccommodation')) 
BEGIN
    CREATE INDEX IX_StudentIEPAccommodation_StudentUSI ON [sedm].[StudentIEPAccommodation](StudentUSI) INCLUDE (AggregateId)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentIEPDisability_StudentUSI' AND object_id = OBJECT_ID('sedm.StudentIEPDisability')) 
BEGIN
    CREATE INDEX IX_StudentIEPDisability_StudentUSI ON [sedm].[StudentIEPDisability](StudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_StudentIEPGoal_IEPServicingEducationOrganizationId ON [sedm].[StudentIEPGoal];
CREATE INDEX IX_StudentIEPGoal_IEPServicingEducationOrganizationId ON [sedm].[StudentIEPGoal](IEPServicingEducationOrganizationId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentIEPGoal_StudentUSI' AND object_id = OBJECT_ID('sedm.StudentIEPGoal')) 
BEGIN
    CREATE INDEX IX_StudentIEPGoal_StudentUSI ON [sedm].[StudentIEPGoal](StudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_StudentIEPServiceDelivery_IEPServicingEducationOrganizationId ON [sedm].[StudentIEPServiceDelivery];
CREATE INDEX IX_StudentIEPServiceDelivery_IEPServicingEducationOrganizationId ON [sedm].[StudentIEPServiceDelivery](IEPServicingEducationOrganizationId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentIEPServiceDelivery_StudentUSI' AND object_id = OBJECT_ID('sedm.StudentIEPServiceDelivery')) 
BEGIN
    CREATE INDEX IX_StudentIEPServiceDelivery_StudentUSI ON [sedm].[StudentIEPServiceDelivery](StudentUSI) INCLUDE (AggregateId)
END;
