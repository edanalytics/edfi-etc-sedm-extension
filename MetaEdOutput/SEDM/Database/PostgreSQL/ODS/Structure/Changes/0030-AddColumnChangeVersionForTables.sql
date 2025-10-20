-- For performance reasons on existing data sets, all existing records will start with ChangeVersion of 0.
DO $$
BEGIN
IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='sedm' AND table_name='ideaevent' AND column_name='changeversion') THEN
ALTER TABLE sedm.IDEAEvent ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE sedm.IDEAEvent ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='sedm' AND table_name='iepgoal' AND column_name='changeversion') THEN
ALTER TABLE sedm.IEPGoal ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE sedm.IEPGoal ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='sedm' AND table_name='iepservicedelivery' AND column_name='changeversion') THEN
ALTER TABLE sedm.IEPServiceDelivery ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE sedm.IEPServiceDelivery ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='sedm' AND table_name='iepserviceprescription' AND column_name='changeversion') THEN
ALTER TABLE sedm.IEPServicePrescription ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE sedm.IEPServicePrescription ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='sedm' AND table_name='studentiepaccommodation' AND column_name='changeversion') THEN
ALTER TABLE sedm.StudentIEPAccommodation ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE sedm.StudentIEPAccommodation ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='sedm' AND table_name='studentiepassociation' AND column_name='changeversion') THEN
ALTER TABLE sedm.StudentIEPAssociation ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE sedm.StudentIEPAssociation ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='sedm' AND table_name='studentiepdisability' AND column_name='changeversion') THEN
ALTER TABLE sedm.StudentIEPDisability ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE sedm.StudentIEPDisability ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

END
$$;
