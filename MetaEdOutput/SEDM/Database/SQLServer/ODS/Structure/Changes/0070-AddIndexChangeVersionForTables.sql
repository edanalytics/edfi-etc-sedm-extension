BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'sedm.IDEAEvent') AND name = N'UX_IDEAEvent_ChangeVersion')
    CREATE INDEX [UX_IDEAEvent_ChangeVersion] ON [sedm].[IDEAEvent] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'sedm.IEPServicePrescription') AND name = N'UX_IEPServicePrescription_ChangeVersion')
    CREATE INDEX [UX_IEPServicePrescription_ChangeVersion] ON [sedm].[IEPServicePrescription] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'sedm.StudentIEP') AND name = N'UX_StudentIEP_ChangeVersion')
    CREATE INDEX [UX_StudentIEP_ChangeVersion] ON [sedm].[StudentIEP] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'sedm.StudentIEPAccommodation') AND name = N'UX_StudentIEPAccommodation_ChangeVersion')
    CREATE INDEX [UX_StudentIEPAccommodation_ChangeVersion] ON [sedm].[StudentIEPAccommodation] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'sedm.StudentIEPDisability') AND name = N'UX_StudentIEPDisability_ChangeVersion')
    CREATE INDEX [UX_StudentIEPDisability_ChangeVersion] ON [sedm].[StudentIEPDisability] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'sedm.StudentIEPGoal') AND name = N'UX_StudentIEPGoal_ChangeVersion')
    CREATE INDEX [UX_StudentIEPGoal_ChangeVersion] ON [sedm].[StudentIEPGoal] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'sedm.StudentIEPServiceDelivery') AND name = N'UX_StudentIEPServiceDelivery_ChangeVersion')
    CREATE INDEX [UX_StudentIEPServiceDelivery_ChangeVersion] ON [sedm].[StudentIEPServiceDelivery] ([ChangeVersion] ASC)
    GO
COMMIT

