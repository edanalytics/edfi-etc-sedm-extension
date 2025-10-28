
CREATE SEQUENCE sedm.IDEAEvent_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE sedm.IDEAEvent ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('sedm.IDEAEvent_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_IDEAEvent_aggid ON sedm.IDEAEvent (AggregateId);


CREATE SEQUENCE sedm.IEPServicePrescription_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE sedm.IEPServicePrescription ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('sedm.IEPServicePrescription_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_IEPServicePrescription_aggid ON sedm.IEPServicePrescription (AggregateId);


CREATE SEQUENCE sedm.StudentIEP_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE sedm.StudentIEP ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('sedm.StudentIEP_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_StudentIEP_aggid ON sedm.StudentIEP (AggregateId);


CREATE SEQUENCE sedm.StudentIEPAccommodation_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE sedm.StudentIEPAccommodation ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('sedm.StudentIEPAccommodation_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_StudentIEPAccommodation_aggid ON sedm.StudentIEPAccommodation (AggregateId);


CREATE SEQUENCE sedm.StudentIEPDisability_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE sedm.StudentIEPDisability ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('sedm.StudentIEPDisability_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_StudentIEPDisability_aggid ON sedm.StudentIEPDisability (AggregateId);


CREATE SEQUENCE sedm.StudentIEPGoal_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE sedm.StudentIEPGoal ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('sedm.StudentIEPGoal_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_StudentIEPGoal_aggid ON sedm.StudentIEPGoal (AggregateId);


CREATE SEQUENCE sedm.StudentIEPServiceDelivery_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE sedm.StudentIEPServiceDelivery ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('sedm.StudentIEPServiceDelivery_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_StudentIEPServiceDelivery_aggid ON sedm.StudentIEPServiceDelivery (AggregateId);

