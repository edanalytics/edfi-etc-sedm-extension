
-- For performance reasons on existing data sets, all existing records will start with ChangeVersion of 0.
IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[sedm].[IDEAEvent]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [sedm].[IDEAEvent] ADD [ChangeVersion] [BIGINT] CONSTRAINT IDEAEvent_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [sedm].[IDEAEvent] DROP CONSTRAINT IDEAEvent_DF_ChangeVersion;
ALTER TABLE [sedm].[IDEAEvent] ADD CONSTRAINT IDEAEvent_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[sedm].[IEPGoal]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [sedm].[IEPGoal] ADD [ChangeVersion] [BIGINT] CONSTRAINT IEPGoal_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [sedm].[IEPGoal] DROP CONSTRAINT IEPGoal_DF_ChangeVersion;
ALTER TABLE [sedm].[IEPGoal] ADD CONSTRAINT IEPGoal_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[sedm].[IEPServiceDelivery]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [sedm].[IEPServiceDelivery] ADD [ChangeVersion] [BIGINT] CONSTRAINT IEPServiceDelivery_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [sedm].[IEPServiceDelivery] DROP CONSTRAINT IEPServiceDelivery_DF_ChangeVersion;
ALTER TABLE [sedm].[IEPServiceDelivery] ADD CONSTRAINT IEPServiceDelivery_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[sedm].[IEPServicePrescription]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [sedm].[IEPServicePrescription] ADD [ChangeVersion] [BIGINT] CONSTRAINT IEPServicePrescription_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [sedm].[IEPServicePrescription] DROP CONSTRAINT IEPServicePrescription_DF_ChangeVersion;
ALTER TABLE [sedm].[IEPServicePrescription] ADD CONSTRAINT IEPServicePrescription_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[sedm].[StudentIEPAccommodation]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [sedm].[StudentIEPAccommodation] ADD [ChangeVersion] [BIGINT] CONSTRAINT StudentIEPAccommodation_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [sedm].[StudentIEPAccommodation] DROP CONSTRAINT StudentIEPAccommodation_DF_ChangeVersion;
ALTER TABLE [sedm].[StudentIEPAccommodation] ADD CONSTRAINT StudentIEPAccommodation_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[sedm].[StudentIEPAssociation]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [sedm].[StudentIEPAssociation] ADD [ChangeVersion] [BIGINT] CONSTRAINT StudentIEPAssociation_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [sedm].[StudentIEPAssociation] DROP CONSTRAINT StudentIEPAssociation_DF_ChangeVersion;
ALTER TABLE [sedm].[StudentIEPAssociation] ADD CONSTRAINT StudentIEPAssociation_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[sedm].[StudentIEPDisability]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [sedm].[StudentIEPDisability] ADD [ChangeVersion] [BIGINT] CONSTRAINT StudentIEPDisability_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [sedm].[StudentIEPDisability] DROP CONSTRAINT StudentIEPDisability_DF_ChangeVersion;
ALTER TABLE [sedm].[StudentIEPDisability] ADD CONSTRAINT StudentIEPDisability_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


