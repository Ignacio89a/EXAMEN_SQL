spool c:\DocumentsandSetting\Administrateur\bureau

DELETE FROM APPELS;
DELETE FROM TELEPHONES;
DELETE FROM ABONNES;

DROP SEQUENCE abonnes_idAbonne_seq;
CREATE SEQUENCE abonnes_idAbonne_seq;

DROP SEQUENCE appels_idAppel_seq;
CREATE SEQUENCE appels_idAppel_seq;

ALTER SESSION SET NLS_DATE_FORMAT = 'mm-dd-yyyy';

INSERT INTO abonnes VALUES(abonnes_idAbonne_seq.NEXTVAL, 'Richard Riquelme', '55 av barclay Mexico', 'Richard@gmail.com'); 
INSERT INTO abonnes VALUES(abonnes_idAbonne_seq.NEXTVAL, 'Diego juarez', '25 polo norte chile', 'diego@bdeboulogne.ca');
INSERT INTO abonnes VALUES(abonnes_idAbonne_seq.NEXTVAL, 'Camila galleguillos', '34 san marcos del sur', 'Camila@gmail.com');
INSERT INTO abonnes VALUES(abonnes_idAbonne_seq.NEXTVAL, 'Olga Riquelme', '165 Agua Santa', 'Olgadelcarmen@hotmail.com');

COMMIT;

INSERT INTO telephones VALUES ('8956238', 'IPHONE 10', to_date('15-02-2001','dd-mm-yyyy'),'Y',1);
INSERT INTO telephones VALUES ('9865324','NOKIA 5120', to_date('23-03-1989','dd-mm-yyyy'),'N',2);
INSERT INTO telephones VALUES ('4512325', 'ERICKSON 1', to_date('15-05-2009','dd-mm-yyyy'),'N',3);
INSERT INTO telephones VALUES ('8527410', 'SAMGSUN 12', to_date('21-01-2022','dd-mm-yyyy'),'Y',4);

COMMIT;

INSERT INTO APPELS VALUES (appels_idAppel_seq.NEXTVAL,'1232325', to_date('04-09-2020','dd-mm-yyyy'),
            to_date('04-09-2020','dd-mm-yyyy'));
INSERT INTO APPELS VALUES (appels_idAppel_seq.NEXTVAL,'4782325', to_date('04-09-2020','dd-mm-yyyy'),
            to_date('04-09-2020','dd-mm-yyyy'));
INSERT INTO APPELS VALUES (appels_idAppel_seq.NEXTVAL,'4512325', to_date('04-09-2020','dd-mm-yyyy'),
            to_date('04-09-2020','dd-mm-yyyy'));
INSERT INTO APPELS VALUES (appels_idAppel_seq.NEXTVAL, '8927410', to_date('22-02-2022','dd-mm-yyyy'),
            to_date('22-02-2022','dd-mm-yyyy'));
            
            spool off;