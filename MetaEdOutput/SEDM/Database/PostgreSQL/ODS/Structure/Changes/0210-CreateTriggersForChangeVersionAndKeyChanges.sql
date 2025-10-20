DO $$
BEGIN
IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'sedm' AND event_object_table = 'ideaevent') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON sedm.ideaevent
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'sedm' AND event_object_table = 'iepgoal') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON sedm.iepgoal
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'sedm' AND event_object_table = 'iepservicedelivery') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON sedm.iepservicedelivery
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'sedm' AND event_object_table = 'iepserviceprescription') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON sedm.iepserviceprescription
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'sedm' AND event_object_table = 'studentiepaccommodation') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON sedm.studentiepaccommodation
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'sedm' AND event_object_table = 'studentiepassociation') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON sedm.studentiepassociation
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'sedm' AND event_object_table = 'studentiepdisability') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON sedm.studentiepdisability
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

END
$$;
