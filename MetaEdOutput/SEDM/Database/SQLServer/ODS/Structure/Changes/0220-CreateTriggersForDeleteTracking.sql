DROP TRIGGER IF EXISTS [sedm].[sedm_EventComplianceDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_EventComplianceDescriptor_TR_DeleteTracking] ON [sedm].[EventComplianceDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.EventComplianceDescriptorId, b.CodeValue, b.Namespace, b.Id, 'sedm.EventComplianceDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EventComplianceDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [sedm].[EventComplianceDescriptor] ENABLE TRIGGER [sedm_EventComplianceDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [sedm].[sedm_EventReasonDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_EventReasonDescriptor_TR_DeleteTracking] ON [sedm].[EventReasonDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.EventReasonDescriptorId, b.CodeValue, b.Namespace, b.Id, 'sedm.EventReasonDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EventReasonDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [sedm].[EventReasonDescriptor] ENABLE TRIGGER [sedm_EventReasonDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [sedm].[sedm_IDEAEventDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_IDEAEventDescriptor_TR_DeleteTracking] ON [sedm].[IDEAEventDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.IDEAEventDescriptorId, b.CodeValue, b.Namespace, b.Id, 'sedm.IDEAEventDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.IDEAEventDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [sedm].[IDEAEventDescriptor] ENABLE TRIGGER [sedm_IDEAEventDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [sedm].[sedm_IEPGoalDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_IEPGoalDescriptor_TR_DeleteTracking] ON [sedm].[IEPGoalDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.IEPGoalDescriptorId, b.CodeValue, b.Namespace, b.Id, 'sedm.IEPGoalDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.IEPGoalDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [sedm].[IEPGoalDescriptor] ENABLE TRIGGER [sedm_IEPGoalDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [sedm].[sedm_IEPStatusDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_IEPStatusDescriptor_TR_DeleteTracking] ON [sedm].[IEPStatusDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.IEPStatusDescriptorId, b.CodeValue, b.Namespace, b.Id, 'sedm.IEPStatusDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.IEPStatusDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [sedm].[IEPStatusDescriptor] ENABLE TRIGGER [sedm_IEPStatusDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [sedm].[sedm_ServiceComplianceDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_ServiceComplianceDescriptor_TR_DeleteTracking] ON [sedm].[ServiceComplianceDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ServiceComplianceDescriptorId, b.CodeValue, b.Namespace, b.Id, 'sedm.ServiceComplianceDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ServiceComplianceDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [sedm].[ServiceComplianceDescriptor] ENABLE TRIGGER [sedm_ServiceComplianceDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [sedm].[sedm_ServiceDeliveryDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_ServiceDeliveryDescriptor_TR_DeleteTracking] ON [sedm].[ServiceDeliveryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ServiceDeliveryDescriptorId, b.CodeValue, b.Namespace, b.Id, 'sedm.ServiceDeliveryDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ServiceDeliveryDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [sedm].[ServiceDeliveryDescriptor] ENABLE TRIGGER [sedm_ServiceDeliveryDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [sedm].[sedm_ServicePrescriptionDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_ServicePrescriptionDescriptor_TR_DeleteTracking] ON [sedm].[ServicePrescriptionDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ServicePrescriptionDescriptorId, b.CodeValue, b.Namespace, b.Id, 'sedm.ServicePrescriptionDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ServicePrescriptionDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [sedm].[ServicePrescriptionDescriptor] ENABLE TRIGGER [sedm_ServicePrescriptionDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [sedm].[sedm_ServiceProviderDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_ServiceProviderDescriptor_TR_DeleteTracking] ON [sedm].[ServiceProviderDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ServiceProviderDescriptorId, b.CodeValue, b.Namespace, b.Id, 'sedm.ServiceProviderDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ServiceProviderDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [sedm].[ServiceProviderDescriptor] ENABLE TRIGGER [sedm_ServiceProviderDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [sedm].[sedm_ServiceReasonDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_ServiceReasonDescriptor_TR_DeleteTracking] ON [sedm].[ServiceReasonDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ServiceReasonDescriptorId, b.CodeValue, b.Namespace, b.Id, 'sedm.ServiceReasonDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ServiceReasonDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [sedm].[ServiceReasonDescriptor] ENABLE TRIGGER [sedm_ServiceReasonDescriptor_TR_DeleteTracking]
GO


