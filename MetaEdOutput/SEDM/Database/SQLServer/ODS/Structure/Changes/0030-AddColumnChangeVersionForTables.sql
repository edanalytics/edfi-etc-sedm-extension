
-- For performance reasons on existing data sets, all existing records will start with ChangeVersion of 0.
IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[sedm].[IDEAEvent]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [sedm].[IDEAEvent] ADD [ChangeVersion] [BIGINT] CONSTRAINT IDEAEvent_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [sedm].[IDEAEvent] DROP CONSTRAINT IDEAEvent_DF_ChangeVersion;
ALTER TABLE [sedm].[IDEAEvent] ADD CONSTRAINT IDEAEvent_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[sedm].[IEPServicePrescription]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [sedm].[IEPServicePrescription] ADD [ChangeVersion] [BIGINT] CONSTRAINT IEPServicePrescription_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [sedm].[IEPServicePrescription] DROP CONSTRAINT IEPServicePrescription_DF_ChangeVersion;
ALTER TABLE [sedm].[IEPServicePrescription] ADD CONSTRAINT IEPServicePrescription_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[sedm].[StudentIEP]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [sedm].[StudentIEP] ADD [ChangeVersion] [BIGINT] CONSTRAINT StudentIEP_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [sedm].[StudentIEP] DROP CONSTRAINT StudentIEP_DF_ChangeVersion;
ALTER TABLE [sedm].[StudentIEP] ADD CONSTRAINT StudentIEP_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[sedm].[StudentIEPAccommodation]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [sedm].[StudentIEPAccommodation] ADD [ChangeVersion] [BIGINT] CONSTRAINT StudentIEPAccommodation_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [sedm].[StudentIEPAccommodation] DROP CONSTRAINT StudentIEPAccommodation_DF_ChangeVersion;
ALTER TABLE [sedm].[StudentIEPAccommodation] ADD CONSTRAINT StudentIEPAccommodation_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[sedm].[StudentIEPDisability]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [sedm].[StudentIEPDisability] ADD [ChangeVersion] [BIGINT] CONSTRAINT StudentIEPDisability_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [sedm].[StudentIEPDisability] DROP CONSTRAINT StudentIEPDisability_DF_ChangeVersion;
ALTER TABLE [sedm].[StudentIEPDisability] ADD CONSTRAINT StudentIEPDisability_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[sedm].[StudentIEPGoal]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [sedm].[StudentIEPGoal] ADD [ChangeVersion] [BIGINT] CONSTRAINT StudentIEPGoal_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [sedm].[StudentIEPGoal] DROP CONSTRAINT StudentIEPGoal_DF_ChangeVersion;
ALTER TABLE [sedm].[StudentIEPGoal] ADD CONSTRAINT StudentIEPGoal_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[sedm].[StudentIEPServiceDelivery]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [sedm].[StudentIEPServiceDelivery] ADD [ChangeVersion] [BIGINT] CONSTRAINT StudentIEPServiceDelivery_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [sedm].[StudentIEPServiceDelivery] DROP CONSTRAINT StudentIEPServiceDelivery_DF_ChangeVersion;
ALTER TABLE [sedm].[StudentIEPServiceDelivery] ADD CONSTRAINT StudentIEPServiceDelivery_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


