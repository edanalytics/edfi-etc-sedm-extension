--Resource Claims for SEDM Entities
INSERT INTO dbo.ResourceClaims 
(resourceclaimid, resourcename, claimname)
VALUES(nextval('dbo.resourceclaims_resourceclaimid_seq'::regclass),'externalServiceProvider','http://ed-fi.org/ods/identity/claims/sedm/externalServiceProvider');
INSERT INTO dbo.ResourceClaims 
(resourceclaimid, resourcename, claimname)
VALUES(nextval('dbo.resourceclaims_resourceclaimid_seq'::regclass),'ideaEvent','http://ed-fi.org/ods/identity/claims/sedm/ideaEvent');
INSERT INTO dbo.ResourceClaims 
(resourceclaimid, resourcename, claimname)
VALUES(nextval('dbo.resourceclaims_resourceclaimid_seq'::regclass),'studentIEP','http://ed-fi.org/ods/identity/claims/sedm/studentIEP');
INSERT INTO dbo.ResourceClaims 
(resourceclaimid, resourcename, claimname)
VALUES(nextval('dbo.resourceclaims_resourceclaimid_seq'::regclass),'studentIEPAccommodationCollection','http://ed-fi.org/ods/identity/claims/sedm/studentIEPAccommodationCollection');
INSERT INTO dbo.ResourceClaims 
(resourceclaimid, resourcename, claimname)
VALUES(nextval('dbo.resourceclaims_resourceclaimid_seq'::regclass),'studentIEPDisabilityCollection','http://ed-fi.org/ods/identity/claims/sedm/studentIEPDisabilityCollection');
INSERT INTO dbo.ResourceClaims 
(resourceclaimid, resourcename, claimname)
VALUES(nextval('dbo.resourceclaims_resourceclaimid_seq'::regclass),'studentIEPGoal','http://ed-fi.org/ods/identity/claims/sedm/studentIEPGoal');
INSERT INTO dbo.ResourceClaims 
(resourceclaimid, resourcename, claimname)
VALUES(nextval('dbo.resourceclaims_resourceclaimid_seq'::regclass),'studentIEPServiceDelivery','http://ed-fi.org/ods/identity/claims/sedm/studentIEPServiceDelivery');
INSERT INTO dbo.ResourceClaims 
(resourceclaimid, resourcename, claimname)
VALUES(nextval('dbo.resourceclaims_resourceclaimid_seq'::regclass),'studentIEPServicePrescription','http://ed-fi.org/ods/identity/claims/sedm/studentIEPServicePrescription');

--Resource Claims for SEDM Descriptors
INSERT INTO dbo.ResourceClaims 
(resourceclaimid, resourcename, claimname)
VALUES(nextval('dbo.resourceclaims_resourceclaimid_seq'::regclass),'durationPeriodDescriptor','http://ed-fi.org/ods/identity/claims/sedm/durationPeriodDescriptor');
INSERT INTO dbo.ResourceClaims 
(resourceclaimid, resourcename, claimname)
VALUES(nextval('dbo.resourceclaims_resourceclaimid_seq'::regclass),'eventComplianceDescriptor','http://ed-fi.org/ods/identity/claims/sedm/eventComplianceDescriptor');
INSERT INTO dbo.ResourceClaims 
(resourceclaimid, resourcename, claimname)
VALUES(nextval('dbo.resourceclaims_resourceclaimid_seq'::regclass),'eventReasonDescriptor','http://ed-fi.org/ods/identity/claims/sedm/eventReasonDescriptor');
INSERT INTO dbo.ResourceClaims 
(resourceclaimid, resourcename, claimname)
VALUES(nextval('dbo.resourceclaims_resourceclaimid_seq'::regclass),'frequencyPeriodDescriptor','http://ed-fi.org/ods/identity/claims/sedm/frequencyPeriodDescriptor');
INSERT INTO dbo.ResourceClaims 
(resourceclaimid, resourcename, claimname)
VALUES(nextval('dbo.resourceclaims_resourceclaimid_seq'::regclass),'ideaEventDescriptor','http://ed-fi.org/ods/identity/claims/sedm/ideaEventDescriptor');
INSERT INTO dbo.ResourceClaims 
(resourceclaimid, resourcename, claimname)
VALUES(nextval('dbo.resourceclaims_resourceclaimid_seq'::regclass),'iepGoalDescriptor','http://ed-fi.org/ods/identity/claims/sedm/iepGoalDescriptor');
INSERT INTO dbo.ResourceClaims 
(resourceclaimid, resourcename, claimname)
VALUES(nextval('dbo.resourceclaims_resourceclaimid_seq'::regclass),'iepStatusDescriptor','http://ed-fi.org/ods/identity/claims/sedm/iepStatusDescriptor');
INSERT INTO dbo.ResourceClaims 
(resourceclaimid, resourcename, claimname)
VALUES(nextval('dbo.resourceclaims_resourceclaimid_seq'::regclass),'serviceComplianceDescriptor','http://ed-fi.org/ods/identity/claims/sedm/serviceComplianceDescriptor');
INSERT INTO dbo.ResourceClaims 
(resourceclaimid, resourcename, claimname)
VALUES(nextval('dbo.resourceclaims_resourceclaimid_seq'::regclass),'serviceDeliveryDescriptor','http://ed-fi.org/ods/identity/claims/sedm/serviceDeliveryDescriptor');
INSERT INTO dbo.ResourceClaims 
(resourceclaimid, resourcename, claimname)
VALUES(nextval('dbo.resourceclaims_resourceclaimid_seq'::regclass),'serviceLocationTypeDescriptor','http://ed-fi.org/ods/identity/claims/sedm/serviceLocationTypeDescriptor');
INSERT INTO dbo.ResourceClaims 
(resourceclaimid, resourcename, claimname)
VALUES(nextval('dbo.resourceclaims_resourceclaimid_seq'::regclass),'servicePrescriptionDescriptor','http://ed-fi.org/ods/identity/claims/sedm/servicePrescriptionDescriptor');
INSERT INTO dbo.ResourceClaims 
(resourceclaimid, resourcename, claimname)
VALUES(nextval('dbo.resourceclaims_resourceclaimid_seq'::regclass),'serviceProviderTypeDescriptor','http://ed-fi.org/ods/identity/claims/sedm/serviceProviderTypeDescriptor');
INSERT INTO dbo.ResourceClaims 
(resourceclaimid, resourcename, claimname)
VALUES(nextval('dbo.resourceclaims_resourceclaimid_seq'::regclass),'serviceReasonDescriptor','http://ed-fi.org/ods/identity/claims/sedm/serviceReasonDescriptor');
