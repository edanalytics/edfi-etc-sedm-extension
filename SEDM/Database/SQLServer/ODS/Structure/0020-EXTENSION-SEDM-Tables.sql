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

-- Table [sedm].[IDEAEventDescriptor] --
CREATE TABLE [sedm].[IDEAEventDescriptor] (
    [IDEAEventDescriptorId] [INT] NOT NULL,
    CONSTRAINT [IDEAEventDescriptor_PK] PRIMARY KEY CLUSTERED (
        [IDEAEventDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [sedm].[IEPGoalDescriptor] --
CREATE TABLE [sedm].[IEPGoalDescriptor] (
    [IEPGoalDescriptorId] [INT] NOT NULL,
    CONSTRAINT [IEPGoalDescriptor_PK] PRIMARY KEY CLUSTERED (
        [IEPGoalDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
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

