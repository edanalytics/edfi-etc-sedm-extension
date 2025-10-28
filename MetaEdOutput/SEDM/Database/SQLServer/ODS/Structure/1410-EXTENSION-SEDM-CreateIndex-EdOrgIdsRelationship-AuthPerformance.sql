
IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_IDEAEvent_EducationOrganizationId' AND object_id = OBJECT_ID('sedm.IDEAEvent')) 
BEGIN
    CREATE INDEX IX_IDEAEvent_EducationOrganizationId ON [sedm].[IDEAEvent](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_IEPGoal_EducationOrganizationId' AND object_id = OBJECT_ID('sedm.IEPGoal')) 
BEGIN
    CREATE INDEX IX_IEPGoal_EducationOrganizationId ON [sedm].[IEPGoal](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_IEPGoal_IEPServicingEducationOrganizationId' AND object_id = OBJECT_ID('sedm.IEPGoal')) 
BEGIN
    CREATE INDEX IX_IEPGoal_IEPServicingEducationOrganizationId ON [sedm].[IEPGoal](IEPServicingEducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_IEPServiceDelivery_EducationOrganizationId' AND object_id = OBJECT_ID('sedm.IEPServiceDelivery')) 
BEGIN
    CREATE INDEX IX_IEPServiceDelivery_EducationOrganizationId ON [sedm].[IEPServiceDelivery](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_IEPServiceDelivery_IEPServicingEducationOrganizationId' AND object_id = OBJECT_ID('sedm.IEPServiceDelivery')) 
BEGIN
    CREATE INDEX IX_IEPServiceDelivery_IEPServicingEducationOrganizationId ON [sedm].[IEPServiceDelivery](IEPServicingEducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_IEPServicePrescription_EducationOrganizationId' AND object_id = OBJECT_ID('sedm.IEPServicePrescription')) 
BEGIN
    CREATE INDEX IX_IEPServicePrescription_EducationOrganizationId ON [sedm].[IEPServicePrescription](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_IEPServicePrescription_IEPServicingEducationOrganizationId' AND object_id = OBJECT_ID('sedm.IEPServicePrescription')) 
BEGIN
    CREATE INDEX IX_IEPServicePrescription_IEPServicingEducationOrganizationId ON [sedm].[IEPServicePrescription](IEPServicingEducationOrganizationId) INCLUDE (Id)
END;
