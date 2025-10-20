
DROP INDEX IF EXISTS IX_IDEAEvent_EducationOrganizationId ON [sedm].[IDEAEvent];
CREATE INDEX IX_IDEAEvent_EducationOrganizationId ON [sedm].[IDEAEvent](EducationOrganizationId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_IDEAEvent_StudentUSI' AND object_id = OBJECT_ID('sedm.IDEAEvent')) 
BEGIN
    CREATE INDEX IX_IDEAEvent_StudentUSI ON [sedm].[IDEAEvent](StudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_IEPGoal_IEPServicingEducationOrganizationId ON [sedm].[IEPGoal];
CREATE INDEX IX_IEPGoal_IEPServicingEducationOrganizationId ON [sedm].[IEPGoal](IEPServicingEducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_IEPGoal_EducationOrganizationId ON [sedm].[IEPGoal];
CREATE INDEX IX_IEPGoal_EducationOrganizationId ON [sedm].[IEPGoal](EducationOrganizationId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_IEPGoal_StudentUSI' AND object_id = OBJECT_ID('sedm.IEPGoal')) 
BEGIN
    CREATE INDEX IX_IEPGoal_StudentUSI ON [sedm].[IEPGoal](StudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_IEPServiceDelivery_IEPServicingEducationOrganizationId ON [sedm].[IEPServiceDelivery];
CREATE INDEX IX_IEPServiceDelivery_IEPServicingEducationOrganizationId ON [sedm].[IEPServiceDelivery](IEPServicingEducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_IEPServiceDelivery_EducationOrganizationId ON [sedm].[IEPServiceDelivery];
CREATE INDEX IX_IEPServiceDelivery_EducationOrganizationId ON [sedm].[IEPServiceDelivery](EducationOrganizationId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_IEPServiceDelivery_StudentUSI' AND object_id = OBJECT_ID('sedm.IEPServiceDelivery')) 
BEGIN
    CREATE INDEX IX_IEPServiceDelivery_StudentUSI ON [sedm].[IEPServiceDelivery](StudentUSI) INCLUDE (AggregateId)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_IEPServiceDelivery_ServiceDeliveryStaffUSI' AND object_id = OBJECT_ID('sedm.IEPServiceDelivery')) 
BEGIN
    CREATE INDEX IX_IEPServiceDelivery_ServiceDeliveryStaffUSI ON [sedm].[IEPServiceDelivery](ServiceDeliveryStaffUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_IEPServicePrescription_IEPServicingEducationOrganizationId ON [sedm].[IEPServicePrescription];
CREATE INDEX IX_IEPServicePrescription_IEPServicingEducationOrganizationId ON [sedm].[IEPServicePrescription](IEPServicingEducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_IEPServicePrescription_EducationOrganizationId ON [sedm].[IEPServicePrescription];
CREATE INDEX IX_IEPServicePrescription_EducationOrganizationId ON [sedm].[IEPServicePrescription](EducationOrganizationId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_IEPServicePrescription_StudentUSI' AND object_id = OBJECT_ID('sedm.IEPServicePrescription')) 
BEGIN
    CREATE INDEX IX_IEPServicePrescription_StudentUSI ON [sedm].[IEPServicePrescription](StudentUSI) INCLUDE (AggregateId)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_IEPServicePrescription_StaffUSI' AND object_id = OBJECT_ID('sedm.IEPServicePrescription')) 
BEGIN
    CREATE INDEX IX_IEPServicePrescription_StaffUSI ON [sedm].[IEPServicePrescription](StaffUSI) INCLUDE (AggregateId)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentIEPAccommodation_StudentUSI' AND object_id = OBJECT_ID('sedm.StudentIEPAccommodation')) 
BEGIN
    CREATE INDEX IX_StudentIEPAccommodation_StudentUSI ON [sedm].[StudentIEPAccommodation](StudentUSI) INCLUDE (AggregateId)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentIEPAssociation_StudentUSI' AND object_id = OBJECT_ID('sedm.StudentIEPAssociation')) 
BEGIN
    CREATE INDEX IX_StudentIEPAssociation_StudentUSI ON [sedm].[StudentIEPAssociation](StudentUSI) INCLUDE (AggregateId)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentIEPDisability_StudentUSI' AND object_id = OBJECT_ID('sedm.StudentIEPDisability')) 
BEGIN
    CREATE INDEX IX_StudentIEPDisability_StudentUSI ON [sedm].[StudentIEPDisability](StudentUSI) INCLUDE (AggregateId)
END;
