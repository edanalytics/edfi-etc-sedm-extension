DO $$
BEGIN
CREATE OR REPLACE FUNCTION tracked_changes_sedm.durationperioddescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.DurationPeriodDescriptorId, b.codevalue, b.namespace, b.id, 'sedm.DurationPeriodDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.DurationPeriodDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'sedm' AND event_object_table = 'durationperioddescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON sedm.durationperioddescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_sedm.durationperioddescriptor_deleted();
END IF;

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

CREATE OR REPLACE FUNCTION tracked_changes_sedm.frequencyperioddescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.FrequencyPeriodDescriptorId, b.codevalue, b.namespace, b.id, 'sedm.FrequencyPeriodDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.FrequencyPeriodDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'sedm' AND event_object_table = 'frequencyperioddescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON sedm.frequencyperioddescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_sedm.frequencyperioddescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_sedm.ideaevent_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
    dj1 edfi.student%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.ideaeventdescriptorid;

    SELECT INTO dj1 * FROM edfi.student j1 WHERE studentusi = old.studentusi;

    INSERT INTO tracked_changes_sedm.ideaevent(
        oldeducationorganizationid, oldideaeventdescriptorid, oldideaeventdescriptornamespace, oldideaeventdescriptorcodevalue, oldideaeventid, oldstudentusi, oldstudentuniqueid,
        id, discriminator, changeversion)
    VALUES (
        OLD.educationorganizationid, OLD.ideaeventdescriptorid, dj0.namespace, dj0.codevalue, OLD.ideaeventid, OLD.studentusi, dj1.studentuniqueid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'sedm' AND event_object_table = 'ideaevent') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON sedm.ideaevent 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_sedm.ideaevent_deleted();
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

CREATE OR REPLACE FUNCTION tracked_changes_sedm.iepgoal_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.student%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.student j0 WHERE studentusi = old.studentusi;

    INSERT INTO tracked_changes_sedm.iepgoal(
        oldiepgoalid, oldstudentusi, oldstudentuniqueid,
        id, discriminator, changeversion)
    VALUES (
        OLD.iepgoalid, OLD.studentusi, dj0.studentuniqueid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'sedm' AND event_object_table = 'iepgoal') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON sedm.iepgoal 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_sedm.iepgoal_deleted();
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

CREATE OR REPLACE FUNCTION tracked_changes_sedm.iepservicedelivery_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
    dj1 edfi.student%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.servicedeliverydescriptorid;

    SELECT INTO dj1 * FROM edfi.student j1 WHERE studentusi = old.studentusi;

    INSERT INTO tracked_changes_sedm.iepservicedelivery(
        oldiepservicedeliveryid, oldservicedeliverydate, oldservicedeliverydescriptorid, oldservicedeliverydescriptornamespace, oldservicedeliverydescriptorcodevalue, oldstudentusi, oldstudentuniqueid,
        id, discriminator, changeversion)
    VALUES (
        OLD.iepservicedeliveryid, OLD.servicedeliverydate, OLD.servicedeliverydescriptorid, dj0.namespace, dj0.codevalue, OLD.studentusi, dj1.studentuniqueid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'sedm' AND event_object_table = 'iepservicedelivery') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON sedm.iepservicedelivery 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_sedm.iepservicedelivery_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_sedm.iepserviceprescription_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
    dj1 edfi.student%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.serviceprescriptiondescriptorid;

    SELECT INTO dj1 * FROM edfi.student j1 WHERE studentusi = old.studentusi;

    INSERT INTO tracked_changes_sedm.iepserviceprescription(
        oldserviceprescriptiondate, oldserviceprescriptiondescriptorid, oldserviceprescriptiondescriptornamespace, oldserviceprescriptiondescriptorcodevalue, oldstudentusi, oldstudentuniqueid,
        id, discriminator, changeversion)
    VALUES (
        OLD.serviceprescriptiondate, OLD.serviceprescriptiondescriptorid, dj0.namespace, dj0.codevalue, OLD.studentusi, dj1.studentuniqueid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'sedm' AND event_object_table = 'iepserviceprescription') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON sedm.iepserviceprescription 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_sedm.iepserviceprescription_deleted();
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

CREATE OR REPLACE FUNCTION tracked_changes_sedm.servicelocationtypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ServiceLocationTypeDescriptorId, b.codevalue, b.namespace, b.id, 'sedm.ServiceLocationTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ServiceLocationTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'sedm' AND event_object_table = 'servicelocationtypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON sedm.servicelocationtypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_sedm.servicelocationtypedescriptor_deleted();
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

CREATE OR REPLACE FUNCTION tracked_changes_sedm.studentiepaccommodation_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.student%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.student j0 WHERE studentusi = old.studentusi;

    INSERT INTO tracked_changes_sedm.studentiepaccommodation(
        oldiepservicingeducationorganizationid, oldstudentusi, oldstudentuniqueid,
        id, discriminator, changeversion)
    VALUES (
        OLD.iepservicingeducationorganizationid, OLD.studentusi, dj0.studentuniqueid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'sedm' AND event_object_table = 'studentiepaccommodation') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON sedm.studentiepaccommodation 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_sedm.studentiepaccommodation_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_sedm.studentiepassociation_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.student%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.student j0 WHERE studentusi = old.studentusi;

    INSERT INTO tracked_changes_sedm.studentiepassociation(
        oldiepfinalizeddate, oldiepservicingeducationorganizationid, oldstudentiepassociationid, oldstudentusi, oldstudentuniqueid,
        id, discriminator, changeversion)
    VALUES (
        OLD.iepfinalizeddate, OLD.iepservicingeducationorganizationid, OLD.studentiepassociationid, OLD.studentusi, dj0.studentuniqueid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'sedm' AND event_object_table = 'studentiepassociation') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON sedm.studentiepassociation 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_sedm.studentiepassociation_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_sedm.studentiepdisability_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.student%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.student j0 WHERE studentusi = old.studentusi;

    INSERT INTO tracked_changes_sedm.studentiepdisability(
        oldiepservicingeducationorganizationid, oldstudentusi, oldstudentuniqueid,
        id, discriminator, changeversion)
    VALUES (
        OLD.iepservicingeducationorganizationid, OLD.studentusi, dj0.studentuniqueid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'sedm' AND event_object_table = 'studentiepdisability') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON sedm.studentiepdisability 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_sedm.studentiepdisability_deleted();
END IF;

END
$$;
