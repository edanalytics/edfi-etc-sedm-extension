-- Table [sedm].[DurationPeriodDescriptor] --
CREATE TABLE [sedm].[DurationPeriodDescriptor] (
    [DurationPeriodDescriptorId] [INT] NOT NULL,
    CONSTRAINT [DurationPeriodDescriptor_PK] PRIMARY KEY CLUSTERED (
        [DurationPeriodDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [sedm].[EventComplianceDescriptor] --
CREATE TABLE [sedm].[EventComplianceDescriptor] (
    [EventComplianceDescriptorId] [INT] NOT NULL,
    CONSTRAINT [EventComplianceDescriptor_PK] PRIMARY KEY CLUSTERED (
        [EventComplianceDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [sedm].[EventReasonDescriptor] --
CREATE TABLE [sedm].[EventReasonDescriptor] (
    [EventReasonDescriptorId] [INT] NOT NULL,
    CONSTRAINT [EventReasonDescriptor_PK] PRIMARY KEY CLUSTERED (
        [EventReasonDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [sedm].[FrequencyPeriodDescriptor] --
CREATE TABLE [sedm].[FrequencyPeriodDescriptor] (
    [FrequencyPeriodDescriptorId] [INT] NOT NULL,
    CONSTRAINT [FrequencyPeriodDescriptor_PK] PRIMARY KEY CLUSTERED (
        [FrequencyPeriodDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [sedm].[IDEAEvent] --
CREATE TABLE [sedm].[IDEAEvent] (
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [IDEAEventDescriptorId] [INT] NOT NULL,
    [IDEAEventID] [NVARCHAR](1024) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [EventBeginDate] [DATE] NOT NULL,
    [EventComplianceDescriptorId] [INT] NULL,
    [EventEndDate] [DATE] NOT NULL,
    [EventNarrative] [NVARCHAR](2048) NULL,
    [EventReasonDescriptorId] [INT] NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [IDEAEvent_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [IDEAEventDescriptorId] ASC,
        [IDEAEventID] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[IDEAEvent] ADD CONSTRAINT [IDEAEvent_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [sedm].[IDEAEvent] ADD CONSTRAINT [IDEAEvent_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [sedm].[IDEAEvent] ADD CONSTRAINT [IDEAEvent_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [sedm].[IDEAEventDescriptor] --
CREATE TABLE [sedm].[IDEAEventDescriptor] (
    [IDEAEventDescriptorId] [INT] NOT NULL,
    CONSTRAINT [IDEAEventDescriptor_PK] PRIMARY KEY CLUSTERED (
        [IDEAEventDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [sedm].[IEPGoal] --
CREATE TABLE [sedm].[IEPGoal] (
    [IEPGoalID] [NVARCHAR](256) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [EducationOrganizationId] [BIGINT] NULL,
    [GoalAchievementPeriodBeginDate] [DATE] NULL,
    [GoalAchievementPeriodEndDate] [DATE] NULL,
    [IDEAEventDescriptorId] [INT] NULL,
    [IDEAEventID] [NVARCHAR](1024) NULL,
    [IEPFinalizedDate] [DATE] NOT NULL,
    [IEPGoalDescriptorId] [INT] NOT NULL,
    [IEPGoalDetails] [NVARCHAR](2048) NOT NULL,
    [IEPServicingEducationOrganizationId] [BIGINT] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](1024) NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [IEPGoal_PK] PRIMARY KEY CLUSTERED (
        [IEPGoalID] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[IEPGoal] ADD CONSTRAINT [IEPGoal_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [sedm].[IEPGoal] ADD CONSTRAINT [IEPGoal_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [sedm].[IEPGoal] ADD CONSTRAINT [IEPGoal_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [sedm].[IEPGoalDescriptor] --
CREATE TABLE [sedm].[IEPGoalDescriptor] (
    [IEPGoalDescriptorId] [INT] NOT NULL,
    CONSTRAINT [IEPGoalDescriptor_PK] PRIMARY KEY CLUSTERED (
        [IEPGoalDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [sedm].[IEPServiceDelivery] --
CREATE TABLE [sedm].[IEPServiceDelivery] (
    [IEPServiceDeliveryID] [NVARCHAR](1024) NOT NULL,
    [ServiceDeliveryDate] [DATE] NOT NULL,
    [ServiceDeliveryDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [EducationOrganizationId] [BIGINT] NULL,
    [IDEAEventDescriptorId] [INT] NULL,
    [IDEAEventID] [NVARCHAR](1024) NULL,
    [IEPFinalizedDate] [DATE] NOT NULL,
    [IEPServicingEducationOrganizationId] [BIGINT] NOT NULL,
    [ServiceDeliveryStaffUSI] [INT] NULL,
    [ServicePrescriptionDate] [DATE] NULL,
    [ServicePrescriptionDescriptorId] [INT] NULL,
    [ServiceProviderDescriptorId] [INT] NULL,
    [StudentIEPAssociationID] [NVARCHAR](1024) NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [IEPServiceDelivery_PK] PRIMARY KEY CLUSTERED (
        [IEPServiceDeliveryID] ASC,
        [ServiceDeliveryDate] ASC,
        [ServiceDeliveryDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[IEPServiceDelivery] ADD CONSTRAINT [IEPServiceDelivery_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [sedm].[IEPServiceDelivery] ADD CONSTRAINT [IEPServiceDelivery_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [sedm].[IEPServiceDelivery] ADD CONSTRAINT [IEPServiceDelivery_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [sedm].[IEPServiceDeliveryExternalServiceProvider] --
CREATE TABLE [sedm].[IEPServiceDeliveryExternalServiceProvider] (
    [IEPServiceDeliveryID] [NVARCHAR](1024) NOT NULL,
    [ServiceDeliveryDate] [DATE] NOT NULL,
    [ServiceDeliveryDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [ProviderCode] [NVARCHAR](1024) NOT NULL,
    [ProviderFirstName] [NVARCHAR](1024) NOT NULL,
    [ProviderLastSurname] [NVARCHAR](1024) NOT NULL,
    [PrimaryProvider] [BIT] NULL,
    [ProviderMiddleName] [NVARCHAR](1024) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [IEPServiceDeliveryExternalServiceProvider_PK] PRIMARY KEY CLUSTERED (
        [IEPServiceDeliveryID] ASC,
        [ServiceDeliveryDate] ASC,
        [ServiceDeliveryDescriptorId] ASC,
        [StudentUSI] ASC,
        [ProviderCode] ASC,
        [ProviderFirstName] ASC,
        [ProviderLastSurname] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[IEPServiceDeliveryExternalServiceProvider] ADD CONSTRAINT [IEPServiceDeliveryExternalServiceProvider_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [sedm].[IEPServicePrescription] --
CREATE TABLE [sedm].[IEPServicePrescription] (
    [ServicePrescriptionDate] [DATE] NOT NULL,
    [ServicePrescriptionDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [DurationMinutes] [DECIMAL](5, 2) NOT NULL,
    [DurationPeriodDescriptorId] [INT] NOT NULL,
    [EducationOrganizationId] [BIGINT] NULL,
    [EndDate] [DATE] NULL,
    [FrequencyPeriodDescriptorId] [INT] NOT NULL,
    [FrequencyValue] [DECIMAL](5, 2) NOT NULL,
    [IDEAEventDescriptorId] [INT] NULL,
    [IDEAEventID] [NVARCHAR](1024) NULL,
    [IEPFinalizedDate] [DATE] NOT NULL,
    [IEPServicingEducationOrganizationId] [BIGINT] NOT NULL,
    [ServiceLocationTypeDescriptorId] [INT] NOT NULL,
    [ServiceProvidingEducationOrganizationId] [BIGINT] NULL,
    [StaffUSI] [INT] NULL,
    [StudentIEPAssociationID] [NVARCHAR](1024) NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [IEPServicePrescription_PK] PRIMARY KEY CLUSTERED (
        [ServicePrescriptionDate] ASC,
        [ServicePrescriptionDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[IEPServicePrescription] ADD CONSTRAINT [IEPServicePrescription_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [sedm].[IEPServicePrescription] ADD CONSTRAINT [IEPServicePrescription_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [sedm].[IEPServicePrescription] ADD CONSTRAINT [IEPServicePrescription_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [sedm].[IEPStatusDescriptor] --
CREATE TABLE [sedm].[IEPStatusDescriptor] (
    [IEPStatusDescriptorId] [INT] NOT NULL,
    CONSTRAINT [IEPStatusDescriptor_PK] PRIMARY KEY CLUSTERED (
        [IEPStatusDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [sedm].[ServiceComplianceDescriptor] --
CREATE TABLE [sedm].[ServiceComplianceDescriptor] (
    [ServiceComplianceDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ServiceComplianceDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ServiceComplianceDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [sedm].[ServiceDeliveryDescriptor] --
CREATE TABLE [sedm].[ServiceDeliveryDescriptor] (
    [ServiceDeliveryDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ServiceDeliveryDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ServiceDeliveryDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [sedm].[ServiceLocationTypeDescriptor] --
CREATE TABLE [sedm].[ServiceLocationTypeDescriptor] (
    [ServiceLocationTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ServiceLocationTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ServiceLocationTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [sedm].[ServicePrescriptionDescriptor] --
CREATE TABLE [sedm].[ServicePrescriptionDescriptor] (
    [ServicePrescriptionDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ServicePrescriptionDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ServicePrescriptionDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [sedm].[ServiceProviderDescriptor] --
CREATE TABLE [sedm].[ServiceProviderDescriptor] (
    [ServiceProviderDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ServiceProviderDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ServiceProviderDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [sedm].[ServiceReasonDescriptor] --
CREATE TABLE [sedm].[ServiceReasonDescriptor] (
    [ServiceReasonDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ServiceReasonDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ServiceReasonDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [sedm].[StudentIEPAccommodation] --
CREATE TABLE [sedm].[StudentIEPAccommodation] (
    [IEPServicingEducationOrganizationId] [BIGINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [IEPFinalizedDate] [DATE] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](1024) NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StudentIEPAccommodation_PK] PRIMARY KEY CLUSTERED (
        [IEPServicingEducationOrganizationId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[StudentIEPAccommodation] ADD CONSTRAINT [StudentIEPAccommodation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [sedm].[StudentIEPAccommodation] ADD CONSTRAINT [StudentIEPAccommodation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [sedm].[StudentIEPAccommodation] ADD CONSTRAINT [StudentIEPAccommodation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [sedm].[StudentIEPAccommodation] --
CREATE TABLE [sedm].[StudentIEPAccommodation] (
    [IEPServicingEducationOrganizationId] [BIGINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [AccommodationDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentIEPAccommodation_PK] PRIMARY KEY CLUSTERED (
        [IEPServicingEducationOrganizationId] ASC,
        [StudentUSI] ASC,
        [AccommodationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[StudentIEPAccommodation] ADD CONSTRAINT [StudentIEPAccommodation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [sedm].[StudentIEPAssociation] --
CREATE TABLE [sedm].[StudentIEPAssociation] (
    [IEPFinalizedDate] [DATE] NOT NULL,
    [IEPServicingEducationOrganizationId] [BIGINT] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](1024) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [IEPAmendedDate] [DATE] NULL,
    [IEPBeginDate] [DATE] NOT NULL,
    [IEPEndDate] [DATE] NOT NULL,
    [IEPStatusDescriptorId] [INT] NOT NULL,
    [MedicallyFragile] [BIT] NULL,
    [MultiplyDisabled] [BIT] NULL,
    [ReasonExitedDescriptorId] [INT] NULL,
    [SchoolHoursPerWeek] [DECIMAL](5, 2) NULL,
    [SpecialEducationHoursPerWeek] [DECIMAL](5, 2) NULL,
    [SpecialEducationSettingDescriptorId] [INT] NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StudentIEPAssociation_PK] PRIMARY KEY CLUSTERED (
        [IEPFinalizedDate] ASC,
        [IEPServicingEducationOrganizationId] ASC,
        [StudentIEPAssociationID] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[StudentIEPAssociation] ADD CONSTRAINT [StudentIEPAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [sedm].[StudentIEPAssociation] ADD CONSTRAINT [StudentIEPAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [sedm].[StudentIEPAssociation] ADD CONSTRAINT [StudentIEPAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [sedm].[StudentIEPAssociationIDEAEvent] --
CREATE TABLE [sedm].[StudentIEPAssociationIDEAEvent] (
    [IEPFinalizedDate] [DATE] NOT NULL,
    [IEPServicingEducationOrganizationId] [BIGINT] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](1024) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [IDEAEventDescriptorId] [INT] NOT NULL,
    [IDEAEventID] [NVARCHAR](1024) NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentIEPAssociationIDEAEvent_PK] PRIMARY KEY CLUSTERED (
        [IEPFinalizedDate] ASC,
        [IEPServicingEducationOrganizationId] ASC,
        [StudentIEPAssociationID] ASC,
        [StudentUSI] ASC,
        [EducationOrganizationId] ASC,
        [IDEAEventDescriptorId] ASC,
        [IDEAEventID] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[StudentIEPAssociationIDEAEvent] ADD CONSTRAINT [StudentIEPAssociationIDEAEvent_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [sedm].[StudentIEPDisability] --
CREATE TABLE [sedm].[StudentIEPDisability] (
    [IEPServicingEducationOrganizationId] [BIGINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [IEPFinalizedDate] [DATE] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](1024) NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StudentIEPDisability_PK] PRIMARY KEY CLUSTERED (
        [IEPServicingEducationOrganizationId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[StudentIEPDisability] ADD CONSTRAINT [StudentIEPDisability_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [sedm].[StudentIEPDisability] ADD CONSTRAINT [StudentIEPDisability_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [sedm].[StudentIEPDisability] ADD CONSTRAINT [StudentIEPDisability_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [sedm].[StudentIEPDisability] --
CREATE TABLE [sedm].[StudentIEPDisability] (
    [IEPServicingEducationOrganizationId] [BIGINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [DisabilityDescriptorId] [INT] NOT NULL,
    [DisabilityDeterminationSourceTypeDescriptorId] [INT] NULL,
    [DisabilityDiagnosis] [NVARCHAR](80) NULL,
    [OrderOfDisability] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentIEPDisability_PK] PRIMARY KEY CLUSTERED (
        [IEPServicingEducationOrganizationId] ASC,
        [StudentUSI] ASC,
        [DisabilityDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[StudentIEPDisability] ADD CONSTRAINT [StudentIEPDisability_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [sedm].[StudentIEPDisabilityDesignation] --
CREATE TABLE [sedm].[StudentIEPDisabilityDesignation] (
    [IEPServicingEducationOrganizationId] [BIGINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [DisabilityDescriptorId] [INT] NOT NULL,
    [DisabilityDesignationDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentIEPDisabilityDesignation_PK] PRIMARY KEY CLUSTERED (
        [IEPServicingEducationOrganizationId] ASC,
        [StudentUSI] ASC,
        [DisabilityDescriptorId] ASC,
        [DisabilityDesignationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[StudentIEPDisabilityDesignation] ADD CONSTRAINT [StudentIEPDisabilityDesignation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

