DO $$
BEGIN
CREATE OR REPLACE FUNCTION tracked_changes_sedm.eventcompliancedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.EventComplianceDescriptorId, b.codevalue, b.namespace, b.id, 'sedm.EventComplianceDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.EventComplianceDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'sedm' AND event_object_table = 'eventcompliancedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON sedm.eventcompliancedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_sedm.eventcompliancedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_sedm.eventreasondescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.EventReasonDescriptorId, b.codevalue, b.namespace, b.id, 'sedm.EventReasonDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.EventReasonDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'sedm' AND event_object_table = 'eventreasondescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON sedm.eventreasondescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_sedm.eventreasondescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_sedm.ideaeventdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.IDEAEventDescriptorId, b.codevalue, b.namespace, b.id, 'sedm.IDEAEventDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.IDEAEventDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'sedm' AND event_object_table = 'ideaeventdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON sedm.ideaeventdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_sedm.ideaeventdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_sedm.iepgoaldescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.IEPGoalDescriptorId, b.codevalue, b.namespace, b.id, 'sedm.IEPGoalDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.IEPGoalDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'sedm' AND event_object_table = 'iepgoaldescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON sedm.iepgoaldescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_sedm.iepgoaldescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_sedm.iepstatusdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.IEPStatusDescriptorId, b.codevalue, b.namespace, b.id, 'sedm.IEPStatusDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.IEPStatusDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'sedm' AND event_object_table = 'iepstatusdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON sedm.iepstatusdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_sedm.iepstatusdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_sedm.servicecompliancedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ServiceComplianceDescriptorId, b.codevalue, b.namespace, b.id, 'sedm.ServiceComplianceDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ServiceComplianceDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'sedm' AND event_object_table = 'servicecompliancedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON sedm.servicecompliancedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_sedm.servicecompliancedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_sedm.servicedeliverydescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ServiceDeliveryDescriptorId, b.codevalue, b.namespace, b.id, 'sedm.ServiceDeliveryDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ServiceDeliveryDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'sedm' AND event_object_table = 'servicedeliverydescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON sedm.servicedeliverydescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_sedm.servicedeliverydescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_sedm.serviceprescriptiondescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ServicePrescriptionDescriptorId, b.codevalue, b.namespace, b.id, 'sedm.ServicePrescriptionDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ServicePrescriptionDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'sedm' AND event_object_table = 'serviceprescriptiondescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON sedm.serviceprescriptiondescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_sedm.serviceprescriptiondescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_sedm.serviceproviderdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ServiceProviderDescriptorId, b.codevalue, b.namespace, b.id, 'sedm.ServiceProviderDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ServiceProviderDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'sedm' AND event_object_table = 'serviceproviderdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON sedm.serviceproviderdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_sedm.serviceproviderdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_sedm.servicereasondescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ServiceReasonDescriptorId, b.codevalue, b.namespace, b.id, 'sedm.ServiceReasonDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ServiceReasonDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'sedm' AND event_object_table = 'servicereasondescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON sedm.servicereasondescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_sedm.servicereasondescriptor_deleted();
END IF;

END
$$;
