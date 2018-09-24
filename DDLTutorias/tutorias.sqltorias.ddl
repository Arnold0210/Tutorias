-- Generado por Oracle SQL Developer Data Modeler 4.1.5.907
--   en:        2018-05-17 17:08:05 COT
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g




CREATE TABLE Est_Prog
  (
    Programa_idPrograma    INTEGER NOT NULL ,
    Estudiante_pers_codigo VARCHAR2 (10) NOT NULL
  ) ;
ALTER TABLE Est_Prog ADD CONSTRAINT Est_Prog_PK PRIMARY KEY ( Programa_idPrograma, Estudiante_pers_codigo ) ;


CREATE TABLE Est_Prog_JN
 (JN_OPERATION CHAR(3) NOT NULL
 ,JN_ORACLE_USER VARCHAR2(30) NOT NULL
 ,JN_DATETIME DATE NOT NULL
 ,JN_NOTES VARCHAR2(240)
 ,JN_APPLN VARCHAR2(35)
 ,JN_SESSION NUMBER(38)
 ,Programa_idPrograma INTEGER NOT NULL
 ,Estudiante_pers_codigo VARCHAR2 (10) NOT NULL
 );

CREATE OR REPLACE TRIGGER Est_Prog_JNtrg
  AFTER 
  INSERT OR 
  UPDATE OR 
  DELETE ON Est_Prog for each row 
 Declare 
  rec Est_Prog_JN%ROWTYPE; 
  blank Est_Prog_JN%ROWTYPE; 
  BEGIN 
    rec := blank; 
    IF INSERTING OR UPDATING THEN 
      rec.Programa_idPrograma := :NEW.Programa_idPrograma; 
      rec.Estudiante_pers_codigo := :NEW.Estudiante_pers_codigo; 
      rec.JN_DATETIME := SYSDATE; 
      rec.JN_ORACLE_USER := SYS_CONTEXT ('USERENV', 'SESSION_USER'); 
      rec.JN_APPLN := SYS_CONTEXT ('USERENV', 'MODULE'); 
      rec.JN_SESSION := SYS_CONTEXT ('USERENV', 'SESSIONID'); 
      IF INSERTING THEN 
        rec.JN_OPERATION := 'INS'; 
      ELSIF UPDATING THEN 
        rec.JN_OPERATION := 'UPD'; 
      END IF; 
    ELSIF DELETING THEN 
      rec.Programa_idPrograma := :OLD.Programa_idPrograma; 
      rec.Estudiante_pers_codigo := :OLD.Estudiante_pers_codigo; 
      rec.JN_DATETIME := SYSDATE; 
      rec.JN_ORACLE_USER := SYS_CONTEXT ('USERENV', 'SESSION_USER'); 
      rec.JN_APPLN := SYS_CONTEXT ('USERENV', 'MODULE'); 
      rec.JN_SESSION := SYS_CONTEXT ('USERENV', 'SESSIONID'); 
      rec.JN_OPERATION := 'DEL'; 
    END IF; 
    INSERT into Est_Prog_JN VALUES rec; 
  END; 
  /
CREATE TABLE Estudiante
  (
    pers_codigo   VARCHAR2 (10) NOT NULL ,
    estd_semestre INTEGER NOT NULL
  ) ;
ALTER TABLE Estudiante ADD CONSTRAINT Estudiante_PK PRIMARY KEY ( pers_codigo ) ;


CREATE TABLE Estudiante_JN
 (JN_OPERATION CHAR(3) NOT NULL
 ,JN_ORACLE_USER VARCHAR2(30) NOT NULL
 ,JN_DATETIME DATE NOT NULL
 ,JN_NOTES VARCHAR2(240)
 ,JN_APPLN VARCHAR2(35)
 ,JN_SESSION NUMBER(38)
 ,pers_codigo VARCHAR2 (10) NOT NULL
 ,estd_semestre INTEGER NOT NULL
 );

CREATE OR REPLACE TRIGGER Estudiante_JNtrg
  AFTER 
  INSERT OR 
  UPDATE OR 
  DELETE ON Estudiante for each row 
 Declare 
  rec Estudiante_JN%ROWTYPE; 
  blank Estudiante_JN%ROWTYPE; 
  BEGIN 
    rec := blank; 
    IF INSERTING OR UPDATING THEN 
      rec.pers_codigo := :NEW.pers_codigo; 
      rec.estd_semestre := :NEW.estd_semestre; 
      rec.JN_DATETIME := SYSDATE; 
      rec.JN_ORACLE_USER := SYS_CONTEXT ('USERENV', 'SESSION_USER'); 
      rec.JN_APPLN := SYS_CONTEXT ('USERENV', 'MODULE'); 
      rec.JN_SESSION := SYS_CONTEXT ('USERENV', 'SESSIONID'); 
      IF INSERTING THEN 
        rec.JN_OPERATION := 'INS'; 
      ELSIF UPDATING THEN 
        rec.JN_OPERATION := 'UPD'; 
      END IF; 
    ELSIF DELETING THEN 
      rec.pers_codigo := :OLD.pers_codigo; 
      rec.estd_semestre := :OLD.estd_semestre; 
      rec.JN_DATETIME := SYSDATE; 
      rec.JN_ORACLE_USER := SYS_CONTEXT ('USERENV', 'SESSION_USER'); 
      rec.JN_APPLN := SYS_CONTEXT ('USERENV', 'MODULE'); 
      rec.JN_SESSION := SYS_CONTEXT ('USERENV', 'SESSIONID'); 
      rec.JN_OPERATION := 'DEL'; 
    END IF; 
    INSERT into Estudiante_JN VALUES rec; 
  END; 
  /
CREATE TABLE Horario
  (
    idHorario  INTEGER NOT NULL ,
    dia        INTEGER NOT NULL ,
    horaInicio VARCHAR2 (5) NOT NULL ,
    horaFinal  VARCHAR2 (5) NOT NULL
  ) ;
ALTER TABLE Horario ADD CONSTRAINT Horario_PK PRIMARY KEY ( idHorario ) ;


CREATE TABLE Horario_JN
 (JN_OPERATION CHAR(3) NOT NULL
 ,JN_ORACLE_USER VARCHAR2(30) NOT NULL
 ,JN_DATETIME DATE NOT NULL
 ,JN_NOTES VARCHAR2(240)
 ,JN_APPLN VARCHAR2(35)
 ,JN_SESSION NUMBER(38)
 ,idHorario INTEGER NOT NULL
 ,dia INTEGER NOT NULL
 ,horaInicio VARCHAR2 (5) NOT NULL
 ,horaFinal VARCHAR2 (5) NOT NULL
 );

CREATE OR REPLACE TRIGGER Horario_JNtrg
  AFTER 
  INSERT OR 
  UPDATE OR 
  DELETE ON Horario for each row 
 Declare 
  rec Horario_JN%ROWTYPE; 
  blank Horario_JN%ROWTYPE; 
  BEGIN 
    rec := blank; 
    IF INSERTING OR UPDATING THEN 
      rec.idHorario := :NEW.idHorario; 
      rec.dia := :NEW.dia; 
      rec.horaInicio := :NEW.horaInicio; 
      rec.horaFinal := :NEW.horaFinal; 
      rec.JN_DATETIME := SYSDATE; 
      rec.JN_ORACLE_USER := SYS_CONTEXT ('USERENV', 'SESSION_USER'); 
      rec.JN_APPLN := SYS_CONTEXT ('USERENV', 'MODULE'); 
      rec.JN_SESSION := SYS_CONTEXT ('USERENV', 'SESSIONID'); 
      IF INSERTING THEN 
        rec.JN_OPERATION := 'INS'; 
      ELSIF UPDATING THEN 
        rec.JN_OPERATION := 'UPD'; 
      END IF; 
    ELSIF DELETING THEN 
      rec.idHorario := :OLD.idHorario; 
      rec.dia := :OLD.dia; 
      rec.horaInicio := :OLD.horaInicio; 
      rec.horaFinal := :OLD.horaFinal; 
      rec.JN_DATETIME := SYSDATE; 
      rec.JN_ORACLE_USER := SYS_CONTEXT ('USERENV', 'SESSION_USER'); 
      rec.JN_APPLN := SYS_CONTEXT ('USERENV', 'MODULE'); 
      rec.JN_SESSION := SYS_CONTEXT ('USERENV', 'SESSIONID'); 
      rec.JN_OPERATION := 'DEL'; 
    END IF; 
    INSERT into Horario_JN VALUES rec; 
  END; 
  /
CREATE TABLE Horario_Persona
  (
    Profesor_pers_codigo VARCHAR2 (10) NOT NULL ,
    Horario_idHorario    INTEGER NOT NULL
  ) ;
ALTER TABLE Horario_Persona ADD CONSTRAINT Horario_Persona_PK PRIMARY KEY ( Profesor_pers_codigo, Horario_idHorario ) ;


CREATE TABLE Horario_Persona_JN
 (JN_OPERATION CHAR(3) NOT NULL
 ,JN_ORACLE_USER VARCHAR2(30) NOT NULL
 ,JN_DATETIME DATE NOT NULL
 ,JN_NOTES VARCHAR2(240)
 ,JN_APPLN VARCHAR2(35)
 ,JN_SESSION NUMBER(38)
 ,Profesor_pers_codigo VARCHAR2 (10) NOT NULL
 ,Horario_idHorario INTEGER NOT NULL
 );

CREATE OR REPLACE TRIGGER Horario_Persona_JNtrg
  AFTER 
  INSERT OR 
  UPDATE OR 
  DELETE ON Horario_Persona for each row 
 Declare 
  rec Horario_Persona_JN%ROWTYPE; 
  blank Horario_Persona_JN%ROWTYPE; 
  BEGIN 
    rec := blank; 
    IF INSERTING OR UPDATING THEN 
      rec.Profesor_pers_codigo := :NEW.Profesor_pers_codigo; 
      rec.Horario_idHorario := :NEW.Horario_idHorario; 
      rec.JN_DATETIME := SYSDATE; 
      rec.JN_ORACLE_USER := SYS_CONTEXT ('USERENV', 'SESSION_USER'); 
      rec.JN_APPLN := SYS_CONTEXT ('USERENV', 'MODULE'); 
      rec.JN_SESSION := SYS_CONTEXT ('USERENV', 'SESSIONID'); 
      IF INSERTING THEN 
        rec.JN_OPERATION := 'INS'; 
      ELSIF UPDATING THEN 
        rec.JN_OPERATION := 'UPD'; 
      END IF; 
    ELSIF DELETING THEN 
      rec.Profesor_pers_codigo := :OLD.Profesor_pers_codigo; 
      rec.Horario_idHorario := :OLD.Horario_idHorario; 
      rec.JN_DATETIME := SYSDATE; 
      rec.JN_ORACLE_USER := SYS_CONTEXT ('USERENV', 'SESSION_USER'); 
      rec.JN_APPLN := SYS_CONTEXT ('USERENV', 'MODULE'); 
      rec.JN_SESSION := SYS_CONTEXT ('USERENV', 'SESSIONID'); 
      rec.JN_OPERATION := 'DEL'; 
    END IF; 
    INSERT into Horario_Persona_JN VALUES rec; 
  END; 
  /
CREATE TABLE Mat_Prog
  (
    Materia_codigo      VARCHAR2 (8) NOT NULL ,
    Programa_idPrograma INTEGER NOT NULL
  ) ;
ALTER TABLE Mat_Prog ADD CONSTRAINT Mat_Prog_PK PRIMARY KEY ( Materia_codigo, Programa_idPrograma ) ;


CREATE TABLE Mat_Prog_JN
 (JN_OPERATION CHAR(3) NOT NULL
 ,JN_ORACLE_USER VARCHAR2(30) NOT NULL
 ,JN_DATETIME DATE NOT NULL
 ,JN_NOTES VARCHAR2(240)
 ,JN_APPLN VARCHAR2(35)
 ,JN_SESSION NUMBER(38)
 ,Materia_codigo VARCHAR2 (8) NOT NULL
 ,Programa_idPrograma INTEGER NOT NULL
 );

CREATE OR REPLACE TRIGGER Mat_Prog_JNtrg
  AFTER 
  INSERT OR 
  UPDATE OR 
  DELETE ON Mat_Prog for each row 
 Declare 
  rec Mat_Prog_JN%ROWTYPE; 
  blank Mat_Prog_JN%ROWTYPE; 
  BEGIN 
    rec := blank; 
    IF INSERTING OR UPDATING THEN 
      rec.Materia_codigo := :NEW.Materia_codigo; 
      rec.Programa_idPrograma := :NEW.Programa_idPrograma; 
      rec.JN_DATETIME := SYSDATE; 
      rec.JN_ORACLE_USER := SYS_CONTEXT ('USERENV', 'SESSION_USER'); 
      rec.JN_APPLN := SYS_CONTEXT ('USERENV', 'MODULE'); 
      rec.JN_SESSION := SYS_CONTEXT ('USERENV', 'SESSIONID'); 
      IF INSERTING THEN 
        rec.JN_OPERATION := 'INS'; 
      ELSIF UPDATING THEN 
        rec.JN_OPERATION := 'UPD'; 
      END IF; 
    ELSIF DELETING THEN 
      rec.Materia_codigo := :OLD.Materia_codigo; 
      rec.Programa_idPrograma := :OLD.Programa_idPrograma; 
      rec.JN_DATETIME := SYSDATE; 
      rec.JN_ORACLE_USER := SYS_CONTEXT ('USERENV', 'SESSION_USER'); 
      rec.JN_APPLN := SYS_CONTEXT ('USERENV', 'MODULE'); 
      rec.JN_SESSION := SYS_CONTEXT ('USERENV', 'SESSIONID'); 
      rec.JN_OPERATION := 'DEL'; 
    END IF; 
    INSERT into Mat_Prog_JN VALUES rec; 
  END; 
  /
CREATE TABLE Materia
  (
    idMateria VARCHAR2 (8) NOT NULL ,
    nombre    VARCHAR2 (20) NOT NULL
  ) ;
ALTER TABLE Materia ADD CONSTRAINT Materia_PK PRIMARY KEY ( idMateria ) ;


CREATE TABLE Persona
  (
    pers_ID        VARCHAR2 (10) CONSTRAINT NNC_pers_pers_codigo NOT NULL ,
    pers_nombres   VARCHAR2 (20) CONSTRAINT NNC_pers_pers_nombres NOT NULL ,
    pers_apellidos VARCHAR2 (20) CONSTRAINT NNC_pers_pers_apellidos NOT NULL ,
    pers_correo    VARCHAR2 (15) CONSTRAINT NNC_pers_pers_correo NOT NULL ,
    pers_programa  VARCHAR2 (15) CONSTRAINT NNC_pers_pers_programa NOT NULL ,
    Usuario_user   VARCHAR2 (15) CONSTRAINT NNC_pers_Usuario_user NOT NULL ,
    tipoPersona    VARCHAR2 (15) NOT NULL
  ) ;
ALTER TABLE Persona ADD CHECK ( tipoPersona IN ('Estudiante', 'Profesor')) ;
CREATE UNIQUE INDEX Persona_Usuario_user_IDX ON Persona ( Usuario_user ASC ) ;
ALTER TABLE Persona ADD CONSTRAINT Persona_PK PRIMARY KEY ( pers_ID ) ;


CREATE TABLE Persona_JN
 (JN_OPERATION CHAR(3) NOT NULL
 ,JN_ORACLE_USER VARCHAR2(30) NOT NULL
 ,JN_DATETIME DATE NOT NULL
 ,JN_NOTES VARCHAR2(240)
 ,JN_APPLN VARCHAR2(35)
 ,JN_SESSION NUMBER(38)
 ,pers_ID VARCHAR2 (10) NOT NULL
 ,pers_nombres VARCHAR2 (20) NOT NULL
 ,pers_apellidos VARCHAR2 (20) NOT NULL
 ,pers_correo VARCHAR2 (15) NOT NULL
 ,pers_programa VARCHAR2 (15) NOT NULL
 ,Usuario_user VARCHAR2 (15) NOT NULL
 ,tipoPersona VARCHAR2 (15) NOT NULL
 );

CREATE OR REPLACE TRIGGER Persona_JNtrg
  AFTER 
  INSERT OR 
  UPDATE OR 
  DELETE ON Persona for each row 
 Declare 
  rec Persona_JN%ROWTYPE; 
  blank Persona_JN%ROWTYPE; 
  BEGIN 
    rec := blank; 
    IF INSERTING OR UPDATING THEN 
      rec.pers_ID := :NEW.pers_ID; 
      rec.pers_nombres := :NEW.pers_nombres; 
      rec.pers_apellidos := :NEW.pers_apellidos; 
      rec.pers_correo := :NEW.pers_correo; 
      rec.pers_programa := :NEW.pers_programa; 
      rec.Usuario_user := :NEW.Usuario_user; 
      rec.tipoPersona := :NEW.tipoPersona; 
      rec.JN_DATETIME := SYSDATE; 
      rec.JN_ORACLE_USER := SYS_CONTEXT ('USERENV', 'SESSION_USER'); 
      rec.JN_APPLN := SYS_CONTEXT ('USERENV', 'MODULE'); 
      rec.JN_SESSION := SYS_CONTEXT ('USERENV', 'SESSIONID'); 
      IF INSERTING THEN 
        rec.JN_OPERATION := 'INS'; 
      ELSIF UPDATING THEN 
        rec.JN_OPERATION := 'UPD'; 
      END IF; 
    ELSIF DELETING THEN 
      rec.pers_ID := :OLD.pers_ID; 
      rec.pers_nombres := :OLD.pers_nombres; 
      rec.pers_apellidos := :OLD.pers_apellidos; 
      rec.pers_correo := :OLD.pers_correo; 
      rec.pers_programa := :OLD.pers_programa; 
      rec.Usuario_user := :OLD.Usuario_user; 
      rec.tipoPersona := :OLD.tipoPersona; 
      rec.JN_DATETIME := SYSDATE; 
      rec.JN_ORACLE_USER := SYS_CONTEXT ('USERENV', 'SESSION_USER'); 
      rec.JN_APPLN := SYS_CONTEXT ('USERENV', 'MODULE'); 
      rec.JN_SESSION := SYS_CONTEXT ('USERENV', 'SESSIONID'); 
      rec.JN_OPERATION := 'DEL'; 
    END IF; 
    INSERT into Persona_JN VALUES rec; 
  END; 
  /
CREATE TABLE Profesor
  (
    pers_codigo       VARCHAR2 (10) NOT NULL ,
    prof_profesion    VARCHAR2 (30) ,
    prof_especialidad VARCHAR2 (30)
  ) ;
ALTER TABLE Profesor ADD CONSTRAINT Profesor_PK PRIMARY KEY ( pers_codigo ) ;


CREATE TABLE Profesor_JN
 (JN_OPERATION CHAR(3) NOT NULL
 ,JN_ORACLE_USER VARCHAR2(30) NOT NULL
 ,JN_DATETIME DATE NOT NULL
 ,JN_NOTES VARCHAR2(240)
 ,JN_APPLN VARCHAR2(35)
 ,JN_SESSION NUMBER(38)
 ,pers_codigo VARCHAR2 (10) NOT NULL
 ,prof_profesion VARCHAR2 (30)
 ,prof_especialidad VARCHAR2 (30)
 );

CREATE OR REPLACE TRIGGER Profesor_JNtrg
  AFTER 
  INSERT OR 
  UPDATE OR 
  DELETE ON Profesor for each row 
 Declare 
  rec Profesor_JN%ROWTYPE; 
  blank Profesor_JN%ROWTYPE; 
  BEGIN 
    rec := blank; 
    IF INSERTING OR UPDATING THEN 
      rec.pers_codigo := :NEW.pers_codigo; 
      rec.prof_profesion := :NEW.prof_profesion; 
      rec.prof_especialidad := :NEW.prof_especialidad; 
      rec.JN_DATETIME := SYSDATE; 
      rec.JN_ORACLE_USER := SYS_CONTEXT ('USERENV', 'SESSION_USER'); 
      rec.JN_APPLN := SYS_CONTEXT ('USERENV', 'MODULE'); 
      rec.JN_SESSION := SYS_CONTEXT ('USERENV', 'SESSIONID'); 
      IF INSERTING THEN 
        rec.JN_OPERATION := 'INS'; 
      ELSIF UPDATING THEN 
        rec.JN_OPERATION := 'UPD'; 
      END IF; 
    ELSIF DELETING THEN 
      rec.pers_codigo := :OLD.pers_codigo; 
      rec.prof_profesion := :OLD.prof_profesion; 
      rec.prof_especialidad := :OLD.prof_especialidad; 
      rec.JN_DATETIME := SYSDATE; 
      rec.JN_ORACLE_USER := SYS_CONTEXT ('USERENV', 'SESSION_USER'); 
      rec.JN_APPLN := SYS_CONTEXT ('USERENV', 'MODULE'); 
      rec.JN_SESSION := SYS_CONTEXT ('USERENV', 'SESSIONID'); 
      rec.JN_OPERATION := 'DEL'; 
    END IF; 
    INSERT into Profesor_JN VALUES rec; 
  END; 
  /
CREATE TABLE Programa
  (
    idPrograma INTEGER NOT NULL ,
    nombre     VARCHAR2 (10) NOT NULL
  ) ;
ALTER TABLE Programa ADD CONSTRAINT Programa_PK PRIMARY KEY ( idPrograma ) ;


CREATE TABLE Reporte
  (
    idMateria    VARCHAR2 (8) NOT NULL ,
    idProfesor   VARCHAR2 (10) NOT NULL ,
    idEstudiante VARCHAR2 (10) NOT NULL ,
    idHorario    INTEGER NOT NULL ,
    idReporte    INTEGER NOT NULL
  ) ;
ALTER TABLE Reporte ADD CONSTRAINT Reporte_PK PRIMARY KEY ( idReporte ) ;


CREATE TABLE Reporte_JN
 (JN_OPERATION CHAR(3) NOT NULL
 ,JN_ORACLE_USER VARCHAR2(30) NOT NULL
 ,JN_DATETIME DATE NOT NULL
 ,JN_NOTES VARCHAR2(240)
 ,JN_APPLN VARCHAR2(35)
 ,JN_SESSION NUMBER(38)
 ,idMateria VARCHAR2 (8) NOT NULL
 ,idProfesor VARCHAR2 (10) NOT NULL
 ,idEstudiante VARCHAR2 (10) NOT NULL
 ,idHorario INTEGER NOT NULL
 ,idReporte INTEGER NOT NULL
 );

CREATE OR REPLACE TRIGGER Reporte_JNtrg
  AFTER 
  INSERT OR 
  UPDATE OR 
  DELETE ON Reporte for each row 
 Declare 
  rec Reporte_JN%ROWTYPE; 
  blank Reporte_JN%ROWTYPE; 
  BEGIN 
    rec := blank; 
    IF INSERTING OR UPDATING THEN 
      rec.idMateria := :NEW.idMateria; 
      rec.idProfesor := :NEW.idProfesor; 
      rec.idEstudiante := :NEW.idEstudiante; 
      rec.idHorario := :NEW.idHorario; 
      rec.idReporte := :NEW.idReporte; 
      rec.JN_DATETIME := SYSDATE; 
      rec.JN_ORACLE_USER := SYS_CONTEXT ('USERENV', 'SESSION_USER'); 
      rec.JN_APPLN := SYS_CONTEXT ('USERENV', 'MODULE'); 
      rec.JN_SESSION := SYS_CONTEXT ('USERENV', 'SESSIONID'); 
      IF INSERTING THEN 
        rec.JN_OPERATION := 'INS'; 
      ELSIF UPDATING THEN 
        rec.JN_OPERATION := 'UPD'; 
      END IF; 
    ELSIF DELETING THEN 
      rec.idMateria := :OLD.idMateria; 
      rec.idProfesor := :OLD.idProfesor; 
      rec.idEstudiante := :OLD.idEstudiante; 
      rec.idHorario := :OLD.idHorario; 
      rec.idReporte := :OLD.idReporte; 
      rec.JN_DATETIME := SYSDATE; 
      rec.JN_ORACLE_USER := SYS_CONTEXT ('USERENV', 'SESSION_USER'); 
      rec.JN_APPLN := SYS_CONTEXT ('USERENV', 'MODULE'); 
      rec.JN_SESSION := SYS_CONTEXT ('USERENV', 'SESSIONID'); 
      rec.JN_OPERATION := 'DEL'; 
    END IF; 
    INSERT into Reporte_JN VALUES rec; 
  END; 
  /
CREATE TABLE Tutoria
  (
    Profesor_pers_codigo VARCHAR2 (10) NOT NULL ,
    Materia_codigo       VARCHAR2 (8) NOT NULL ,
    Horario_idHorario    INTEGER NOT NULL
  ) ;
ALTER TABLE Tutoria ADD CONSTRAINT Prof_Mat_PK PRIMARY KEY ( Profesor_pers_codigo, Materia_codigo, Horario_idHorario ) ;


CREATE TABLE Usuario
  (
    "user"              VARCHAR2 (15) NOT NULL ,
    password            VARCHAR2 (12) NOT NULL ,
    Persona_pers_codigo VARCHAR2 (10) NOT NULL
  ) ;
CREATE UNIQUE INDEX Usuario__IDX ON Usuario
  (
    Persona_pers_codigo ASC
  )
  ;
ALTER TABLE Usuario ADD CONSTRAINT Usuario_PK PRIMARY KEY ( "user" ) ;


ALTER TABLE Est_Prog ADD CONSTRAINT Estudiante_Est_ProgFK FOREIGN KEY ( Estudiante_pers_codigo ) REFERENCES Estudiante ( pers_codigo ) ;

ALTER TABLE Estudiante ADD CONSTRAINT Estudiante_Persona_FK FOREIGN KEY ( pers_codigo ) REFERENCES Persona ( pers_ID ) ;

ALTER TABLE Horario_Persona ADD CONSTRAINT Horario_Horairio_Persona_FK FOREIGN KEY ( Horario_idHorario ) REFERENCES Horario ( idHorario ) ;

ALTER TABLE Mat_Prog ADD CONSTRAINT Materia_Mat_Prog_FK FOREIGN KEY ( Materia_codigo ) REFERENCES Materia ( idMateria ) ;

ALTER TABLE Persona ADD CONSTRAINT Persona_Usuario_FK FOREIGN KEY ( Usuario_user ) REFERENCES Usuario ( "user" ) ;

ALTER TABLE Horario_Persona ADD CONSTRAINT Profesor_Horario_Persona_FK FOREIGN KEY ( Profesor_pers_codigo ) REFERENCES Profesor ( pers_codigo ) ;

ALTER TABLE Profesor ADD CONSTRAINT Profesor_Persona_FK FOREIGN KEY ( pers_codigo ) REFERENCES Persona ( pers_ID ) ;

ALTER TABLE Est_Prog ADD CONSTRAINT Programa_Est_Prog_FK FOREIGN KEY ( Programa_idPrograma ) REFERENCES Programa ( idPrograma ) ;

ALTER TABLE Mat_Prog ADD CONSTRAINT Programa_Mat_Prog_FK FOREIGN KEY ( Programa_idPrograma ) REFERENCES Programa ( idPrograma ) ;

ALTER TABLE Reporte ADD CONSTRAINT Reporte_Estudiante_FK FOREIGN KEY ( idEstudiante ) REFERENCES Estudiante ( pers_codigo ) ;

ALTER TABLE Reporte ADD CONSTRAINT Reporte_Horario_FK FOREIGN KEY ( idHorario ) REFERENCES Horario ( idHorario ) ;

ALTER TABLE Reporte ADD CONSTRAINT Reporte_Materia_FK FOREIGN KEY ( idMateria ) REFERENCES Materia ( idMateria ) ;

ALTER TABLE Reporte ADD CONSTRAINT Reporte_Profesor_FK FOREIGN KEY ( idProfesor ) REFERENCES Profesor ( pers_codigo ) ;

ALTER TABLE Tutoria ADD CONSTRAINT Tutoria_Horario_FK FOREIGN KEY ( Horario_idHorario ) REFERENCES Horario ( idHorario ) ;

ALTER TABLE Tutoria ADD CONSTRAINT Tutoria_Materia_FK FOREIGN KEY ( Materia_codigo ) REFERENCES Materia ( idMateria ) ;

ALTER TABLE Tutoria ADD CONSTRAINT Tutoria_Profesor_FK FOREIGN KEY ( Profesor_pers_codigo ) REFERENCES Profesor ( pers_codigo ) ;

ALTER TABLE Usuario ADD CONSTRAINT Usuario_Persona_FK FOREIGN KEY ( Persona_pers_codigo ) REFERENCES Persona ( pers_ID ) ;

CREATE OR REPLACE TRIGGER ARC_FKArc_1_Profesor BEFORE
  INSERT OR
  UPDATE OF pers_codigo ON Profesor FOR EACH ROW DECLARE d VARCHAR2 (15);
  BEGIN
    SELECT A.tipoPersona INTO d FROM Persona A WHERE A.pers_ID = :new.pers_codigo;
    IF (d IS NULL OR d <> 'Profesor') THEN
      raise_application_error(-20223,'FK Profesor_Persona_FK in Table Profesor violates Arc constraint on Table Persona - discriminator column tipoPersona doesn''t have value ''Profesor''');
    END IF;
  EXCEPTION
  WHEN NO_DATA_FOUND THEN
    NULL;
  WHEN OTHERS THEN
    RAISE;
  END;
  /
CREATE OR REPLACE TRIGGER ARC_FKArc_1_Estudiante BEFORE
  INSERT OR
  UPDATE OF pers_codigo ON Estudiante FOR EACH ROW DECLARE d VARCHAR2 (15);
  BEGIN
    SELECT A.tipoPersona INTO d FROM Persona A WHERE A.pers_ID = :new.pers_codigo;
    IF (d IS NULL OR d <> 'Estudiante') THEN
      raise_application_error(-20223,'FK Estudiante_Persona_FK in Table Estudiante violates Arc constraint on Table Persona - discriminator column tipoPersona doesn''t have value ''Estudiante''');
    END IF;
  EXCEPTION
  WHEN NO_DATA_FOUND THEN
    NULL;
  WHEN OTHERS THEN
    RAISE;
  END;
  /

CREATE SEQUENCE Horario_idHorario_SEQ START WITH 1000 NOCACHE ORDER ;
CREATE OR REPLACE TRIGGER Horario_idHorario_TRG BEFORE
  INSERT ON Horario FOR EACH ROW BEGIN :NEW.idHorario := Horario_idHorario_SEQ.NEXTVAL;
END;
/

CREATE SEQUENCE Reporte_idReporte_SEQ START WITH 1000 NOCACHE ORDER ;
CREATE OR REPLACE TRIGGER Reporte_idReporte_TRG BEFORE
  INSERT ON Reporte FOR EACH ROW BEGIN :NEW.idReporte := Reporte_idReporte_SEQ.NEXTVAL;
END;
/


-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            12
-- CREATE INDEX                             2
-- ALTER TABLE                             30
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           4
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          2
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
