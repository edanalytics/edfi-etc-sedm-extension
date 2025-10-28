-- For performance reasons on existing data sets, all existing records will start with ChangeVersion of 0.
DO $$
BEGIN
IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='sedm' AND table_name='ideaevent' AND column_name='changeversion') THEN
ALTER TABLE sedm.IDEAEvent ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE sedm.IDEAEvent ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='sedm' AND table_name='iepserviceprescription' AND column_name='changeversion') THEN
ALTER TABLE sedm.IEPServicePrescription ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE sedm.IEPServicePrescription ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='sedm' AND table_name='studentiep' AND column_name='changeversion') THEN
ALTER TABLE sedm.StudentIEP ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE sedm.StudentIEP ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='sedm' AND table_name='studentiepaccommodation' AND column_name='changeversion') THEN
ALTER TABLE sedm.StudentIEPAccommodation ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE sedm.StudentIEPAccommodation ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='sedm' AND table_name='studentiepdisability' AND column_name='changeversion') THEN
ALTER TABLE sedm.StudentIEPDisability ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE sedm.StudentIEPDisability ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='sedm' AND table_name='studentiepgoal' AND column_name='changeversion') THEN
ALTER TABLE sedm.StudentIEPGoal ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE sedm.StudentIEPGoal ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='sedm' AND table_name='studentiepservicedelivery' AND column_name='changeversion') THEN
ALTER TABLE sedm.StudentIEPServiceDelivery ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE sedm.StudentIEPServiceDelivery ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

END
$$;
