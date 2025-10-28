CREATE SEQUENCE [sedm].[IDEAEvent_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [sedm].[IDEAEvent] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [sedm].[IDEAEvent_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_IDEAEvent_AggregateId] ON [sedm].[IDEAEvent] (AggregateId);

CREATE SEQUENCE [sedm].[IEPServicePrescription_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [sedm].[IEPServicePrescription] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [sedm].[IEPServicePrescription_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_IEPServicePrescription_AggregateId] ON [sedm].[IEPServicePrescription] (AggregateId);

CREATE SEQUENCE [sedm].[StudentIEP_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [sedm].[StudentIEP] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [sedm].[StudentIEP_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StudentIEP_AggregateId] ON [sedm].[StudentIEP] (AggregateId);

CREATE SEQUENCE [sedm].[StudentIEPAccommodation_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [sedm].[StudentIEPAccommodation] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [sedm].[StudentIEPAccommodation_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StudentIEPAccommodation_AggregateId] ON [sedm].[StudentIEPAccommodation] (AggregateId);

CREATE SEQUENCE [sedm].[StudentIEPDisability_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [sedm].[StudentIEPDisability] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [sedm].[StudentIEPDisability_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StudentIEPDisability_AggregateId] ON [sedm].[StudentIEPDisability] (AggregateId);

CREATE SEQUENCE [sedm].[StudentIEPGoal_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [sedm].[StudentIEPGoal] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [sedm].[StudentIEPGoal_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StudentIEPGoal_AggregateId] ON [sedm].[StudentIEPGoal] (AggregateId);

CREATE SEQUENCE [sedm].[StudentIEPServiceDelivery_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [sedm].[StudentIEPServiceDelivery] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [sedm].[StudentIEPServiceDelivery_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StudentIEPServiceDelivery_AggregateId] ON [sedm].[StudentIEPServiceDelivery] (AggregateId);

