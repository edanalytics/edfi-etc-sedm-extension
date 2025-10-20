IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'tracked_changes_sedm')
EXEC sys.sp_executesql N'CREATE SCHEMA [tracked_changes_sedm]'
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_sedm].[IDEAEvent]'))
CREATE TABLE [tracked_changes_sedm].[IDEAEvent]
(
       OldEducationOrganizationId [BIGINT] NOT NULL,
       OldIDEAEventDescriptorId [INT] NOT NULL,
       OldIDEAEventDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldIDEAEventDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldIDEAEventID [NVARCHAR](1024) NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewEducationOrganizationId [BIGINT] NULL,
       NewIDEAEventDescriptorId [INT] NULL,
       NewIDEAEventDescriptorNamespace [NVARCHAR](255) NULL,
       NewIDEAEventDescriptorCodeValue [NVARCHAR](50) NULL,
       NewIDEAEventID [NVARCHAR](1024) NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_IDEAEvent PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_sedm].[IEPGoal]'))
CREATE TABLE [tracked_changes_sedm].[IEPGoal]
(
       OldIEPFinalizedDate [DATE] NOT NULL,
       OldIEPGoalID [NVARCHAR](30) NOT NULL,
       OldIEPServicingEducationOrganizationId [BIGINT] NOT NULL,
       OldStudentIEPAssociationID [NVARCHAR](1024) NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewIEPFinalizedDate [DATE] NULL,
       NewIEPGoalID [NVARCHAR](30) NULL,
       NewIEPServicingEducationOrganizationId [BIGINT] NULL,
       NewStudentIEPAssociationID [NVARCHAR](1024) NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_IEPGoal PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_sedm].[IEPServiceDelivery]'))
CREATE TABLE [tracked_changes_sedm].[IEPServiceDelivery]
(
       OldIEPFinalizedDate [DATE] NOT NULL,
       OldIEPServiceDeliveryID [NVARCHAR](1024) NOT NULL,
       OldIEPServicingEducationOrganizationId [BIGINT] NOT NULL,
       OldServiceDeliveryDate [DATE] NOT NULL,
       OldServiceDeliveryDescriptorId [INT] NOT NULL,
       OldServiceDeliveryDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldServiceDeliveryDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldStudentIEPAssociationID [NVARCHAR](1024) NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewIEPFinalizedDate [DATE] NULL,
       NewIEPServiceDeliveryID [NVARCHAR](1024) NULL,
       NewIEPServicingEducationOrganizationId [BIGINT] NULL,
       NewServiceDeliveryDate [DATE] NULL,
       NewServiceDeliveryDescriptorId [INT] NULL,
       NewServiceDeliveryDescriptorNamespace [NVARCHAR](255) NULL,
       NewServiceDeliveryDescriptorCodeValue [NVARCHAR](50) NULL,
       NewStudentIEPAssociationID [NVARCHAR](1024) NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_IEPServiceDelivery PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_sedm].[IEPServicePrescription]'))
CREATE TABLE [tracked_changes_sedm].[IEPServicePrescription]
(
       OldIEPFinalizedDate [DATE] NOT NULL,
       OldIEPServicingEducationOrganizationId [BIGINT] NOT NULL,
       OldServicePrescriptionDate [DATE] NOT NULL,
       OldServicePrescriptionDescriptorId [INT] NOT NULL,
       OldServicePrescriptionDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldServicePrescriptionDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldStudentIEPAssociationID [NVARCHAR](1024) NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewIEPFinalizedDate [DATE] NULL,
       NewIEPServicingEducationOrganizationId [BIGINT] NULL,
       NewServicePrescriptionDate [DATE] NULL,
       NewServicePrescriptionDescriptorId [INT] NULL,
       NewServicePrescriptionDescriptorNamespace [NVARCHAR](255) NULL,
       NewServicePrescriptionDescriptorCodeValue [NVARCHAR](50) NULL,
       NewStudentIEPAssociationID [NVARCHAR](1024) NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_IEPServicePrescription PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_sedm].[StudentIEPAccommodation]'))
CREATE TABLE [tracked_changes_sedm].[StudentIEPAccommodation]
(
       OldIEPFinalizedDate [DATE] NOT NULL,
       OldIEPServicingEducationOrganizationId [BIGINT] NOT NULL,
       OldStudentIEPAssociationID [NVARCHAR](1024) NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewIEPFinalizedDate [DATE] NULL,
       NewIEPServicingEducationOrganizationId [BIGINT] NULL,
       NewStudentIEPAssociationID [NVARCHAR](1024) NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_StudentIEPAccommodation PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_sedm].[StudentIEPAssociation]'))
CREATE TABLE [tracked_changes_sedm].[StudentIEPAssociation]
(
       OldIEPFinalizedDate [DATE] NOT NULL,
       OldIEPServicingEducationOrganizationId [BIGINT] NOT NULL,
       OldStudentIEPAssociationID [NVARCHAR](1024) NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewIEPFinalizedDate [DATE] NULL,
       NewIEPServicingEducationOrganizationId [BIGINT] NULL,
       NewStudentIEPAssociationID [NVARCHAR](1024) NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_StudentIEPAssociation PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_sedm].[StudentIEPDisability]'))
CREATE TABLE [tracked_changes_sedm].[StudentIEPDisability]
(
       OldIEPFinalizedDate [DATE] NOT NULL,
       OldIEPServicingEducationOrganizationId [BIGINT] NOT NULL,
       OldStudentIEPAssociationID [NVARCHAR](1024) NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewIEPFinalizedDate [DATE] NULL,
       NewIEPServicingEducationOrganizationId [BIGINT] NULL,
       NewStudentIEPAssociationID [NVARCHAR](1024) NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_StudentIEPDisability PRIMARY KEY CLUSTERED (ChangeVersion)
)
