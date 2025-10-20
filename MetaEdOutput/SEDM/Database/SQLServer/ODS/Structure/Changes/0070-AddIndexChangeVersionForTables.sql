BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'sedm.IDEAEvent') AND name = N'UX_IDEAEvent_ChangeVersion')
    CREATE INDEX [UX_IDEAEvent_ChangeVersion] ON [sedm].[IDEAEvent] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'sedm.IEPGoal') AND name = N'UX_IEPGoal_ChangeVersion')
    CREATE INDEX [UX_IEPGoal_ChangeVersion] ON [sedm].[IEPGoal] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'sedm.IEPServiceDelivery') AND name = N'UX_IEPServiceDelivery_ChangeVersion')
    CREATE INDEX [UX_IEPServiceDelivery_ChangeVersion] ON [sedm].[IEPServiceDelivery] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'sedm.IEPServicePrescription') AND name = N'UX_IEPServicePrescription_ChangeVersion')
    CREATE INDEX [UX_IEPServicePrescription_ChangeVersion] ON [sedm].[IEPServicePrescription] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'sedm.StudentIEPAccommodation') AND name = N'UX_StudentIEPAccommodation_ChangeVersion')
    CREATE INDEX [UX_StudentIEPAccommodation_ChangeVersion] ON [sedm].[StudentIEPAccommodation] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'sedm.StudentIEPAssociation') AND name = N'UX_StudentIEPAssociation_ChangeVersion')
    CREATE INDEX [UX_StudentIEPAssociation_ChangeVersion] ON [sedm].[StudentIEPAssociation] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'sedm.StudentIEPDisability') AND name = N'UX_StudentIEPDisability_ChangeVersion')
    CREATE INDEX [UX_StudentIEPDisability_ChangeVersion] ON [sedm].[StudentIEPDisability] ([ChangeVersion] ASC)
    GO
COMMIT

