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

-- Table sedm.ServicePrescriptionDescriptor --
CREATE TABLE sedm.ServicePrescriptionDescriptor (
    ServicePrescriptionDescriptorId INT NOT NULL,
    CONSTRAINT ServicePrescriptionDescriptor_PK PRIMARY KEY (ServicePrescriptionDescriptorId)
);

-- Table sedm.ServiceProviderDescriptor --
CREATE TABLE sedm.ServiceProviderDescriptor (
    ServiceProviderDescriptorId INT NOT NULL,
    CONSTRAINT ServiceProviderDescriptor_PK PRIMARY KEY (ServiceProviderDescriptorId)
);

-- Table sedm.ServiceReasonDescriptor --
CREATE TABLE sedm.ServiceReasonDescriptor (
    ServiceReasonDescriptorId INT NOT NULL,
    CONSTRAINT ServiceReasonDescriptor_PK PRIMARY KEY (ServiceReasonDescriptorId)
);

