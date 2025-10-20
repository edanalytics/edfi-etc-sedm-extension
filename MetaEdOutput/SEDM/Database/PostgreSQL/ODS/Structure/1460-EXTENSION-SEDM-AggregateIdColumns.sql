
CREATE SEQUENCE sedm.IDEAEvent_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE sedm.IDEAEvent ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('sedm.IDEAEvent_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_IDEAEvent_aggid ON sedm.IDEAEvent (AggregateId);


CREATE SEQUENCE sedm.IEPGoal_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE sedm.IEPGoal ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('sedm.IEPGoal_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_IEPGoal_aggid ON sedm.IEPGoal (AggregateId);


CREATE SEQUENCE sedm.IEPServiceDelivery_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE sedm.IEPServiceDelivery ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('sedm.IEPServiceDelivery_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_IEPServiceDelivery_aggid ON sedm.IEPServiceDelivery (AggregateId);


CREATE SEQUENCE sedm.IEPServicePrescription_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE sedm.IEPServicePrescription ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('sedm.IEPServicePrescription_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_IEPServicePrescription_aggid ON sedm.IEPServicePrescription (AggregateId);


CREATE SEQUENCE sedm.StudentIEPAccommodation_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE sedm.StudentIEPAccommodation ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('sedm.StudentIEPAccommodation_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_StudentIEPAccommodation_aggid ON sedm.StudentIEPAccommodation (AggregateId);


CREATE SEQUENCE sedm.StudentIEPAssociation_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE sedm.StudentIEPAssociation ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('sedm.StudentIEPAssociation_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_StudentIEPAssociation_aggid ON sedm.StudentIEPAssociation (AggregateId);


CREATE SEQUENCE sedm.StudentIEPDisability_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE sedm.StudentIEPDisability ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('sedm.StudentIEPDisability_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_StudentIEPDisability_aggid ON sedm.StudentIEPDisability (AggregateId);

