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

DROP TRIGGER IF EXISTS [sedm].[sedm_IEPGoal_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [sedm].[sedm_IEPGoal_TR_UpdateChangeVersion] ON [sedm].[IEPGoal] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [sedm].[IEPGoal]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [sedm].[IEPGoal] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [sedm].[sedm_IEPServiceDelivery_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [sedm].[sedm_IEPServiceDelivery_TR_UpdateChangeVersion] ON [sedm].[IEPServiceDelivery] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [sedm].[IEPServiceDelivery]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [sedm].[IEPServiceDelivery] u
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

DROP TRIGGER IF EXISTS [sedm].[sedm_StudentIEPAssociation_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [sedm].[sedm_StudentIEPAssociation_TR_UpdateChangeVersion] ON [sedm].[StudentIEPAssociation] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [sedm].[StudentIEPAssociation]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [sedm].[StudentIEPAssociation] u
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

