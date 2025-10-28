-- Table sedm.DurationPeriodDescriptor --
CREATE TABLE sedm.DurationPeriodDescriptor (
    DurationPeriodDescriptorId INT NOT NULL,
    CONSTRAINT DurationPeriodDescriptor_PK PRIMARY KEY (DurationPeriodDescriptorId)
);

-- Table sedm.EventComplianceDescriptor --
CREATE TABLE sedm.EventComplianceDescriptor (
    EventComplianceDescriptorId INT NOT NULL,
    CONSTRAINT EventComplianceDescriptor_PK PRIMARY KEY (EventComplianceDescriptorId)
);

-- Table sedm.EventReasonDescriptor --
CREATE TABLE sedm.EventReasonDescriptor (
    EventReasonDescriptorId INT NOT NULL,
    CONSTRAINT EventReasonDescriptor_PK PRIMARY KEY (EventReasonDescriptorId)
);

-- Table sedm.FrequencyPeriodDescriptor --
CREATE TABLE sedm.FrequencyPeriodDescriptor (
    FrequencyPeriodDescriptorId INT NOT NULL,
    CONSTRAINT FrequencyPeriodDescriptor_PK PRIMARY KEY (FrequencyPeriodDescriptorId)
);

-- Table sedm.IDEAEvent --
CREATE TABLE sedm.IDEAEvent (
    EducationOrganizationId BIGINT NOT NULL,
    IDEAEventDescriptorId INT NOT NULL,
    IDEAEventID VARCHAR(1024) NOT NULL,
    StudentUSI INT NOT NULL,
    EventBeginDate DATE NOT NULL,
    EventComplianceDescriptorId INT NULL,
    EventEndDate DATE NOT NULL,
    EventNarrative VARCHAR(2048) NULL,
    EventReasonDescriptorId INT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT IDEAEvent_PK PRIMARY KEY (EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID, StudentUSI)
);
ALTER TABLE sedm.IDEAEvent ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE sedm.IDEAEvent ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE sedm.IDEAEvent ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.IDEAEventDescriptor --
CREATE TABLE sedm.IDEAEventDescriptor (
    IDEAEventDescriptorId INT NOT NULL,
    CONSTRAINT IDEAEventDescriptor_PK PRIMARY KEY (IDEAEventDescriptorId)
);

-- Table sedm.IEPGoalDescriptor --
CREATE TABLE sedm.IEPGoalDescriptor (
    IEPGoalDescriptorId INT NOT NULL,
    CONSTRAINT IEPGoalDescriptor_PK PRIMARY KEY (IEPGoalDescriptorId)
);

-- Table sedm.IEPServicePrescription --
CREATE TABLE sedm.IEPServicePrescription (
    IEPFinalizedDate DATE NOT NULL,
    IEPServicingEducationOrganizationId BIGINT NOT NULL,
    ServicePrescriptionDate DATE NOT NULL,
    ServicePrescriptionDescriptorId INT NOT NULL,
    StudentIEPAssociationID VARCHAR(1024) NOT NULL,
    StudentUSI INT NOT NULL,
    BeginDate DATE NOT NULL,
    DurationMinutes DECIMAL(5, 2) NOT NULL,
    DurationPeriodDescriptorId INT NOT NULL,
    EndDate DATE NULL,
    FrequencyPeriodDescriptorId INT NOT NULL,
    FrequencyValue DECIMAL(5, 2) NOT NULL,
    ServiceLocationTypeDescriptorId INT NOT NULL,
    ServiceProvidingEducationOrganizationId BIGINT NULL,
    StaffUSI INT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT IEPServicePrescription_PK PRIMARY KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, ServicePrescriptionDate, ServicePrescriptionDescriptorId, StudentIEPAssociationID, StudentUSI)
);
ALTER TABLE sedm.IEPServicePrescription ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE sedm.IEPServicePrescription ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE sedm.IEPServicePrescription ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.IEPServicePrescriptionIDEAEvent --
CREATE TABLE sedm.IEPServicePrescriptionIDEAEvent (
    IEPFinalizedDate DATE NOT NULL,
    IEPServicingEducationOrganizationId BIGINT NOT NULL,
    ServicePrescriptionDate DATE NOT NULL,
    ServicePrescriptionDescriptorId INT NOT NULL,
    StudentIEPAssociationID VARCHAR(1024) NOT NULL,
    StudentUSI INT NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    IDEAEventDescriptorId INT NOT NULL,
    IDEAEventID VARCHAR(1024) NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT IEPServicePrescriptionIDEAEvent_PK PRIMARY KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, ServicePrescriptionDate, ServicePrescriptionDescriptorId, StudentIEPAssociationID, StudentUSI, EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID)
);
ALTER TABLE sedm.IEPServicePrescriptionIDEAEvent ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.IEPStatusDescriptor --
CREATE TABLE sedm.IEPStatusDescriptor (
    IEPStatusDescriptorId INT NOT NULL,
    CONSTRAINT IEPStatusDescriptor_PK PRIMARY KEY (IEPStatusDescriptorId)
);

-- Table sedm.ServiceComplianceDescriptor --
CREATE TABLE sedm.ServiceComplianceDescriptor (
    ServiceComplianceDescriptorId INT NOT NULL,
    CONSTRAINT ServiceComplianceDescriptor_PK PRIMARY KEY (ServiceComplianceDescriptorId)
);

-- Table sedm.ServiceDeliveryDescriptor --
CREATE TABLE sedm.ServiceDeliveryDescriptor (
    ServiceDeliveryDescriptorId INT NOT NULL,
    CONSTRAINT ServiceDeliveryDescriptor_PK PRIMARY KEY (ServiceDeliveryDescriptorId)
);

-- Table sedm.ServiceLocationTypeDescriptor --
CREATE TABLE sedm.ServiceLocationTypeDescriptor (
    ServiceLocationTypeDescriptorId INT NOT NULL,
    CONSTRAINT ServiceLocationTypeDescriptor_PK PRIMARY KEY (ServiceLocationTypeDescriptorId)
);

-- Table sedm.ServicePrescriptionDescriptor --
CREATE TABLE sedm.ServicePrescriptionDescriptor (
    ServicePrescriptionDescriptorId INT NOT NULL,
    CONSTRAINT ServicePrescriptionDescriptor_PK PRIMARY KEY (ServicePrescriptionDescriptorId)
);

-- Table sedm.ServiceProviderTypeDescriptor --
CREATE TABLE sedm.ServiceProviderTypeDescriptor (
    ServiceProviderTypeDescriptorId INT NOT NULL,
    CONSTRAINT ServiceProviderTypeDescriptor_PK PRIMARY KEY (ServiceProviderTypeDescriptorId)
);

-- Table sedm.ServiceReasonDescriptor --
CREATE TABLE sedm.ServiceReasonDescriptor (
    ServiceReasonDescriptorId INT NOT NULL,
    CONSTRAINT ServiceReasonDescriptor_PK PRIMARY KEY (ServiceReasonDescriptorId)
);

-- Table sedm.StudentIEP --
CREATE TABLE sedm.StudentIEP (
    IEPFinalizedDate DATE NOT NULL,
    IEPServicingEducationOrganizationId BIGINT NOT NULL,
    StudentIEPAssociationID VARCHAR(1024) NOT NULL,
    StudentUSI INT NOT NULL,
    IEPAmendedDate DATE NULL,
    IEPBeginDate DATE NOT NULL,
    IEPEndDate DATE NOT NULL,
    IEPStatusDescriptorId INT NOT NULL,
    MedicallyFragile BOOLEAN NULL,
    MultiplyDisabled BOOLEAN NULL,
    ReasonExitedDescriptorId INT NULL,
    SchoolHoursPerWeek DECIMAL(5, 2) NULL,
    SpecialEducationHoursPerWeek DECIMAL(5, 2) NULL,
    SpecialEducationSettingDescriptorId INT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT StudentIEP_PK PRIMARY KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
);
ALTER TABLE sedm.StudentIEP ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE sedm.StudentIEP ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE sedm.StudentIEP ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.StudentIEPAccommodation --
CREATE TABLE sedm.StudentIEPAccommodation (
    IEPFinalizedDate DATE NOT NULL,
    IEPServicingEducationOrganizationId BIGINT NOT NULL,
    StudentIEPAssociationID VARCHAR(1024) NOT NULL,
    StudentUSI INT NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT StudentIEPAccommodation_PK PRIMARY KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
);
ALTER TABLE sedm.StudentIEPAccommodation ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE sedm.StudentIEPAccommodation ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE sedm.StudentIEPAccommodation ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.StudentIEPAccommodation --
CREATE TABLE sedm.StudentIEPAccommodation (
    IEPFinalizedDate DATE NOT NULL,
    IEPServicingEducationOrganizationId BIGINT NOT NULL,
    StudentIEPAssociationID VARCHAR(1024) NOT NULL,
    StudentUSI INT NOT NULL,
    AccommodationDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentIEPAccommodation_PK PRIMARY KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI, AccommodationDescriptorId)
);
ALTER TABLE sedm.StudentIEPAccommodation ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.StudentIEPDisability --
CREATE TABLE sedm.StudentIEPDisability (
    IEPFinalizedDate DATE NOT NULL,
    IEPServicingEducationOrganizationId BIGINT NOT NULL,
    StudentIEPAssociationID VARCHAR(1024) NOT NULL,
    StudentUSI INT NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT StudentIEPDisability_PK PRIMARY KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
);
ALTER TABLE sedm.StudentIEPDisability ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE sedm.StudentIEPDisability ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE sedm.StudentIEPDisability ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.StudentIEPDisability --
CREATE TABLE sedm.StudentIEPDisability (
    IEPFinalizedDate DATE NOT NULL,
    IEPServicingEducationOrganizationId BIGINT NOT NULL,
    StudentIEPAssociationID VARCHAR(1024) NOT NULL,
    StudentUSI INT NOT NULL,
    DisabilityDescriptorId INT NOT NULL,
    DisabilityDeterminationSourceTypeDescriptorId INT NULL,
    DisabilityDiagnosis VARCHAR(80) NULL,
    OrderOfDisability INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentIEPDisability_PK PRIMARY KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI, DisabilityDescriptorId)
);
ALTER TABLE sedm.StudentIEPDisability ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.StudentIEPDisabilityDesignation --
CREATE TABLE sedm.StudentIEPDisabilityDesignation (
    IEPFinalizedDate DATE NOT NULL,
    IEPServicingEducationOrganizationId BIGINT NOT NULL,
    StudentIEPAssociationID VARCHAR(1024) NOT NULL,
    StudentUSI INT NOT NULL,
    DisabilityDescriptorId INT NOT NULL,
    DisabilityDesignationDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentIEPDisabilityDesignation_PK PRIMARY KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI, DisabilityDescriptorId, DisabilityDesignationDescriptorId)
);
ALTER TABLE sedm.StudentIEPDisabilityDesignation ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.StudentIEPGoal --
CREATE TABLE sedm.StudentIEPGoal (
    IEPFinalizedDate DATE NOT NULL,
    IEPGoalID VARCHAR(256) NOT NULL,
    IEPServicingEducationOrganizationId BIGINT NOT NULL,
    StudentIEPAssociationID VARCHAR(1024) NOT NULL,
    StudentUSI INT NOT NULL,
    GoalAchievementPeriodBeginDate DATE NULL,
    GoalAchievementPeriodEndDate DATE NULL,
    IEPGoalDescriptorId INT NOT NULL,
    IEPGoalDetails VARCHAR(2048) NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT StudentIEPGoal_PK PRIMARY KEY (IEPFinalizedDate, IEPGoalID, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
);
ALTER TABLE sedm.StudentIEPGoal ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE sedm.StudentIEPGoal ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE sedm.StudentIEPGoal ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.StudentIEPGoalIDEAEvent --
CREATE TABLE sedm.StudentIEPGoalIDEAEvent (
    IEPFinalizedDate DATE NOT NULL,
    IEPGoalID VARCHAR(256) NOT NULL,
    IEPServicingEducationOrganizationId BIGINT NOT NULL,
    StudentIEPAssociationID VARCHAR(1024) NOT NULL,
    StudentUSI INT NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    IDEAEventDescriptorId INT NOT NULL,
    IDEAEventID VARCHAR(1024) NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentIEPGoalIDEAEvent_PK PRIMARY KEY (IEPFinalizedDate, IEPGoalID, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI, EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID)
);
ALTER TABLE sedm.StudentIEPGoalIDEAEvent ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.StudentIEPIDEAEvent --
CREATE TABLE sedm.StudentIEPIDEAEvent (
    IEPFinalizedDate DATE NOT NULL,
    IEPServicingEducationOrganizationId BIGINT NOT NULL,
    StudentIEPAssociationID VARCHAR(1024) NOT NULL,
    StudentUSI INT NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    IDEAEventDescriptorId INT NOT NULL,
    IDEAEventID VARCHAR(1024) NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentIEPIDEAEvent_PK PRIMARY KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI, EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID)
);
ALTER TABLE sedm.StudentIEPIDEAEvent ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.StudentIEPServiceDelivery --
CREATE TABLE sedm.StudentIEPServiceDelivery (
    IEPFinalizedDate DATE NOT NULL,
    IEPServiceDeliveryID VARCHAR(1024) NOT NULL,
    IEPServicingEducationOrganizationId BIGINT NOT NULL,
    ServiceDeliveryDate DATE NOT NULL,
    ServiceDeliveryDescriptorId INT NOT NULL,
    StudentIEPAssociationID VARCHAR(1024) NOT NULL,
    StudentUSI INT NOT NULL,
    ServicePrescriptionDate DATE NULL,
    ServicePrescriptionDescriptorId INT NULL,
    ServiceProviderTypeDescriptorId INT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT StudentIEPServiceDelivery_PK PRIMARY KEY (IEPFinalizedDate, IEPServiceDeliveryID, IEPServicingEducationOrganizationId, ServiceDeliveryDate, ServiceDeliveryDescriptorId, StudentIEPAssociationID, StudentUSI)
);
ALTER TABLE sedm.StudentIEPServiceDelivery ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE sedm.StudentIEPServiceDelivery ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE sedm.StudentIEPServiceDelivery ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.StudentIEPServiceDeliveryExternalServiceProvider --
CREATE TABLE sedm.StudentIEPServiceDeliveryExternalServiceProvider (
    IEPFinalizedDate DATE NOT NULL,
    IEPServiceDeliveryID VARCHAR(1024) NOT NULL,
    IEPServicingEducationOrganizationId BIGINT NOT NULL,
    ServiceDeliveryDate DATE NOT NULL,
    ServiceDeliveryDescriptorId INT NOT NULL,
    StudentIEPAssociationID VARCHAR(1024) NOT NULL,
    StudentUSI INT NOT NULL,
    ProviderCode VARCHAR(1024) NOT NULL,
    ProviderFirstName VARCHAR(1024) NOT NULL,
    ProviderLastSurname VARCHAR(1024) NOT NULL,
    PrimaryProvider BOOLEAN NULL,
    ProviderMiddleName VARCHAR(1024) NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentIEPServiceDeliveryExternalServiceProvider_PK PRIMARY KEY (IEPFinalizedDate, IEPServiceDeliveryID, IEPServicingEducationOrganizationId, ServiceDeliveryDate, ServiceDeliveryDescriptorId, StudentIEPAssociationID, StudentUSI, ProviderCode, ProviderFirstName, ProviderLastSurname)
);
ALTER TABLE sedm.StudentIEPServiceDeliveryExternalServiceProvider ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.StudentIEPServiceDeliveryIDEAEvent --
CREATE TABLE sedm.StudentIEPServiceDeliveryIDEAEvent (
    IEPFinalizedDate DATE NOT NULL,
    IEPServiceDeliveryID VARCHAR(1024) NOT NULL,
    IEPServicingEducationOrganizationId BIGINT NOT NULL,
    ServiceDeliveryDate DATE NOT NULL,
    ServiceDeliveryDescriptorId INT NOT NULL,
    StudentIEPAssociationID VARCHAR(1024) NOT NULL,
    StudentUSI INT NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    IDEAEventDescriptorId INT NOT NULL,
    IDEAEventID VARCHAR(1024) NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentIEPServiceDeliveryIDEAEvent_PK PRIMARY KEY (IEPFinalizedDate, IEPServiceDeliveryID, IEPServicingEducationOrganizationId, ServiceDeliveryDate, ServiceDeliveryDescriptorId, StudentIEPAssociationID, StudentUSI, EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID)
);
ALTER TABLE sedm.StudentIEPServiceDeliveryIDEAEvent ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.StudentIEPServiceDeliveryServiceProvider --
CREATE TABLE sedm.StudentIEPServiceDeliveryServiceProvider (
    IEPFinalizedDate DATE NOT NULL,
    IEPServiceDeliveryID VARCHAR(1024) NOT NULL,
    IEPServicingEducationOrganizationId BIGINT NOT NULL,
    ServiceDeliveryDate DATE NOT NULL,
    ServiceDeliveryDescriptorId INT NOT NULL,
    StudentIEPAssociationID VARCHAR(1024) NOT NULL,
    StudentUSI INT NOT NULL,
    StaffUSI INT NOT NULL,
    PrimaryProvider BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentIEPServiceDeliveryServiceProvider_PK PRIMARY KEY (IEPFinalizedDate, IEPServiceDeliveryID, IEPServicingEducationOrganizationId, ServiceDeliveryDate, ServiceDeliveryDescriptorId, StudentIEPAssociationID, StudentUSI, StaffUSI)
);
ALTER TABLE sedm.StudentIEPServiceDeliveryServiceProvider ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

