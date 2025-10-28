DROP TRIGGER IF EXISTS [sedm].[sedm_IDEAEvent_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [sedm].[sedm_IDEAEvent_TR_UpdateChangeVersion] ON [sedm].[IDEAEvent] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [sedm].[IDEAEvent]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [sedm].[IDEAEvent] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [sedm].[sedm_IEPServicePrescription_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [sedm].[sedm_IEPServicePrescription_TR_UpdateChangeVersion] ON [sedm].[IEPServicePrescription] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [sedm].[IEPServicePrescription]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [sedm].[IEPServicePrescription] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [sedm].[sedm_StudentIEP_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [sedm].[sedm_StudentIEP_TR_UpdateChangeVersion] ON [sedm].[StudentIEP] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [sedm].[StudentIEP]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [sedm].[StudentIEP] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [sedm].[sedm_StudentIEPAccommodation_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [sedm].[sedm_StudentIEPAccommodation_TR_UpdateChangeVersion] ON [sedm].[StudentIEPAccommodation] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [sedm].[StudentIEPAccommodation]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [sedm].[StudentIEPAccommodation] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [sedm].[sedm_StudentIEPDisability_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [sedm].[sedm_StudentIEPDisability_TR_UpdateChangeVersion] ON [sedm].[StudentIEPDisability] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [sedm].[StudentIEPDisability]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [sedm].[StudentIEPDisability] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [sedm].[sedm_StudentIEPGoal_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [sedm].[sedm_StudentIEPGoal_TR_UpdateChangeVersion] ON [sedm].[StudentIEPGoal] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [sedm].[StudentIEPGoal]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [sedm].[StudentIEPGoal] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [sedm].[sedm_StudentIEPServiceDelivery_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [sedm].[sedm_StudentIEPServiceDelivery_TR_UpdateChangeVersion] ON [sedm].[StudentIEPServiceDelivery] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [sedm].[StudentIEPServiceDelivery]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [sedm].[StudentIEPServiceDelivery] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

