CREATE SEQUENCE [sedm].[IDEAEvent_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [sedm].[IDEAEvent] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [sedm].[IDEAEvent_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_IDEAEvent_AggregateId] ON [sedm].[IDEAEvent] (AggregateId);

CREATE SEQUENCE [sedm].[IEPGoal_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [sedm].[IEPGoal] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [sedm].[IEPGoal_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_IEPGoal_AggregateId] ON [sedm].[IEPGoal] (AggregateId);

CREATE SEQUENCE [sedm].[IEPServiceDelivery_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [sedm].[IEPServiceDelivery] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [sedm].[IEPServiceDelivery_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_IEPServiceDelivery_AggregateId] ON [sedm].[IEPServiceDelivery] (AggregateId);

CREATE SEQUENCE [sedm].[IEPServicePrescription_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [sedm].[IEPServicePrescription] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [sedm].[IEPServicePrescription_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_IEPServicePrescription_AggregateId] ON [sedm].[IEPServicePrescription] (AggregateId);

CREATE SEQUENCE [sedm].[StudentIEPAccommodation_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [sedm].[StudentIEPAccommodation] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [sedm].[StudentIEPAccommodation_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StudentIEPAccommodation_AggregateId] ON [sedm].[StudentIEPAccommodation] (AggregateId);

CREATE SEQUENCE [sedm].[StudentIEPAssociation_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [sedm].[StudentIEPAssociation] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [sedm].[StudentIEPAssociation_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StudentIEPAssociation_AggregateId] ON [sedm].[StudentIEPAssociation] (AggregateId);

CREATE SEQUENCE [sedm].[StudentIEPDisability_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [sedm].[StudentIEPDisability] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [sedm].[StudentIEPDisability_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StudentIEPDisability_AggregateId] ON [sedm].[StudentIEPDisability] (AggregateId);

