--------------------------------------------------------
--  파일이 생성됨 - 금요일-11월-13-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table T_BRD
--------------------------------------------------------

  CREATE TABLE "TEST"."T_BRD" 
   (	"BOARDCD" NUMBER, 
	"BOARDNM" VARCHAR2(100 BYTE), 
	"BOARDTP" CHAR(1 BYTE), 
	"ORDERBY" NUMBER DEFAULT 0, 
	"RECOMYN" CHAR(1 BYTE) DEFAULT 'N', 
	"SCRAPYN" CHAR(1 BYTE) DEFAULT 'N', 
	"REPLYYN" CHAR(1 BYTE) DEFAULT 'N', 
	"CATEGORYYN" CHAR(1 BYTE) DEFAULT 'N', 
	"PERMREAD" NUMBER DEFAULT 0, 
	"PERMINST" NUMBER DEFAULT 0, 
	"USEYN" CHAR(1 BYTE) DEFAULT 'Y', 
	"REGDT" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table T_BRD_CONT
--------------------------------------------------------

  CREATE TABLE "TEST"."T_BRD_CONT" 
   (	"CONTENTID" NUMBER, 
	"BOARDCD" NUMBER, 
	"TITLE" VARCHAR2(250 BYTE), 
	"CONTENT" VARCHAR2(3000 BYTE), 
	"CATEGORYSEQ" NUMBER DEFAULT 0, 
	"TAG" VARCHAR2(200 BYTE), 
	"READCNT" NUMBER(*,0) DEFAULT 0, 
	"PASSWORD" VARCHAR2(50 BYTE), 
	"ID" VARCHAR2(50 BYTE), 
	"PHONE" VARCHAR2(30 BYTE), 
	"DTSTART" DATE, 
	"DTEND" DATE, 
	"STATUS" CHAR(1 BYTE) DEFAULT 'N', 
	"IP" VARCHAR2(15 BYTE), 
	"UPTDT" DATE DEFAULT sysdate, 
	"REGDT" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table T_BRD_FILE
--------------------------------------------------------

  CREATE TABLE "TEST"."T_BRD_FILE" 
   (	"FILEID" NUMBER, 
	"CONTENTID" NUMBER, 
	"ORGFILENAME" VARCHAR2(260 BYTE), 
	"STOREDFILENAME" VARCHAR2(36 BYTE), 
	"REGDT" DATE DEFAULT sysdate, 
	"USEYN" VARCHAR2(1 BYTE) DEFAULT 'Y', 
	"FILESIZE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table T_LOGIN_HIST
--------------------------------------------------------

  CREATE TABLE "TEST"."T_LOGIN_HIST" 
   (	"USEQ" NUMBER, 
	"PERMISSION" NUMBER, 
	"ID" VARCHAR2(100 BYTE), 
	"USERNM" VARCHAR2(100 BYTE), 
	"HPHONE" VARCHAR2(30 BYTE), 
	"IP" VARCHAR2(15 BYTE), 
	"REGDT" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table T_USER
--------------------------------------------------------

  CREATE TABLE "TEST"."T_USER" 
   (	"USEQ" NUMBER, 
	"PERMISSION" NUMBER, 
	"ID" VARCHAR2(50 BYTE), 
	"USERNM" VARCHAR2(100 BYTE), 
	"USERNICK" VARCHAR2(100 BYTE), 
	"PASSWORD" VARCHAR2(50 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE), 
	"HPHONE" VARCHAR2(30 BYTE), 
	"PHONE" VARCHAR2(30 BYTE), 
	"ZIPCODE" VARCHAR2(7 BYTE), 
	"ADDR1" VARCHAR2(100 BYTE), 
	"ADDR2" VARCHAR2(200 BYTE), 
	"BIRTHDAY" VARCHAR2(8 BYTE), 
	"MAILINGYN" CHAR(1 BYTE) DEFAULT 'N', 
	"USEYN" CHAR(1 BYTE) DEFAULT 'Y', 
	"IPLIMIT" VARCHAR2(15 BYTE), 
	"DELETEYN" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"AUTHDT" DATE, 
	"REGDT" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table T_USER_PERMISSION
--------------------------------------------------------

  CREATE TABLE "TEST"."T_USER_PERMISSION" 
   (	"PERMISSIONID" NUMBER, 
	"PERMISSION" NUMBER, 
	"PERMISSIONNM" VARCHAR2(100 BYTE), 
	"USEYN" CHAR(1 BYTE) DEFAULT 'Y', 
	"REGDT" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Sequence SEQ_CONTENTID
--------------------------------------------------------

   CREATE SEQUENCE  "TEST"."SEQ_CONTENTID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_FILEID
--------------------------------------------------------

   CREATE SEQUENCE  "TEST"."SEQ_FILEID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PERMISSIONID
--------------------------------------------------------

   CREATE SEQUENCE  "TEST"."SEQ_PERMISSIONID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_USEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TEST"."SEQ_USEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
REM INSERTING into TEST.T_BRD
SET DEFINE OFF;
Insert into TEST.T_BRD (BOARDCD,BOARDNM,BOARDTP,ORDERBY,RECOMYN,SCRAPYN,REPLYYN,CATEGORYYN,PERMREAD,PERMINST,USEYN,REGDT) values (3,'Q&A','I',0,'N','N','N','N',0,0,'Y',to_date('20/11/13','RR/MM/DD'));
Insert into TEST.T_BRD (BOARDCD,BOARDNM,BOARDTP,ORDERBY,RECOMYN,SCRAPYN,REPLYYN,CATEGORYYN,PERMREAD,PERMINST,USEYN,REGDT) values (1,'공지사항','N',0,'N','N','N','N',0,0,'Y',to_date('20/11/11','RR/MM/DD'));
Insert into TEST.T_BRD (BOARDCD,BOARDNM,BOARDTP,ORDERBY,RECOMYN,SCRAPYN,REPLYYN,CATEGORYYN,PERMREAD,PERMINST,USEYN,REGDT) values (2,'자유게시판','N',0,'N','N','N','N',0,0,'Y',to_date('20/11/11','RR/MM/DD'));
REM INSERTING into TEST.T_BRD_CONT
SET DEFINE OFF;
Insert into TEST.T_BRD_CONT (CONTENTID,BOARDCD,TITLE,CONTENT,CATEGORYSEQ,TAG,READCNT,PASSWORD,ID,PHONE,DTSTART,DTEND,STATUS,IP,UPTDT,REGDT) values (27,2,'자유시글 제목','자유게시글내용 ',0,null,0,'1234','admin','1234567',null,null,'N','0:0:0:0:0:0:0:1',to_date('20/11/12','RR/MM/DD'),to_date('20/11/12','RR/MM/DD'));
Insert into TEST.T_BRD_CONT (CONTENTID,BOARDCD,TITLE,CONTENT,CATEGORYSEQ,TAG,READCNT,PASSWORD,ID,PHONE,DTSTART,DTEND,STATUS,IP,UPTDT,REGDT) values (28,1,'공지사항 글','내용 ',0,null,0,'1234','admin','1234567',null,null,'N','0:0:0:0:0:0:0:1',to_date('20/11/12','RR/MM/DD'),to_date('20/11/12','RR/MM/DD'));
Insert into TEST.T_BRD_CONT (CONTENTID,BOARDCD,TITLE,CONTENT,CATEGORYSEQ,TAG,READCNT,PASSWORD,ID,PHONE,DTSTART,DTEND,STATUS,IP,UPTDT,REGDT) values (29,1,'공지사항제목',' 내용  ',0,null,10,'1234','admin','1234567',null,null,'N','0:0:0:0:0:0:0:1',to_date('20/11/12','RR/MM/DD'),to_date('20/11/12','RR/MM/DD'));
Insert into TEST.T_BRD_CONT (CONTENTID,BOARDCD,TITLE,CONTENT,CATEGORYSEQ,TAG,READCNT,PASSWORD,ID,PHONE,DTSTART,DTEND,STATUS,IP,UPTDT,REGDT) values (41,1,'공지사항 글','내용 ',0,null,1,'1234','kiki','0518729453',null,null,'N','0:0:0:0:0:0:0:1',to_date('20/11/13','RR/MM/DD'),to_date('20/11/13','RR/MM/DD'));
Insert into TEST.T_BRD_CONT (CONTENTID,BOARDCD,TITLE,CONTENT,CATEGORYSEQ,TAG,READCNT,PASSWORD,ID,PHONE,DTSTART,DTEND,STATUS,IP,UPTDT,REGDT) values (25,1,'글',' ㄷㄷ',0,null,4,'1234','admin','1234567',null,null,'D','0:0:0:0:0:0:0:1',to_date('20/11/12','RR/MM/DD'),to_date('20/11/12','RR/MM/DD'));
Insert into TEST.T_BRD_CONT (CONTENTID,BOARDCD,TITLE,CONTENT,CATEGORYSEQ,TAG,READCNT,PASSWORD,ID,PHONE,DTSTART,DTEND,STATUS,IP,UPTDT,REGDT) values (26,1,'글',' ㄷㄷ    ',0,null,27,'1234','admin','1234567',null,null,'N','0:0:0:0:0:0:0:1',to_date('20/11/12','RR/MM/DD'),to_date('20/11/12','RR/MM/DD'));
Insert into TEST.T_BRD_CONT (CONTENTID,BOARDCD,TITLE,CONTENT,CATEGORYSEQ,TAG,READCNT,PASSWORD,ID,PHONE,DTSTART,DTEND,STATUS,IP,UPTDT,REGDT) values (42,1,'글제목','글내용 ',0,null,0,'1234','kiki','0518729453',null,null,'N','0:0:0:0:0:0:0:1',to_date('20/11/13','RR/MM/DD'),to_date('20/11/13','RR/MM/DD'));
Insert into TEST.T_BRD_CONT (CONTENTID,BOARDCD,TITLE,CONTENT,CATEGORYSEQ,TAG,READCNT,PASSWORD,ID,PHONE,DTSTART,DTEND,STATUS,IP,UPTDT,REGDT) values (43,1,'글제목','글내용 ',0,null,1,'1234','kiki','0518729453',null,null,'N','0:0:0:0:0:0:0:1',to_date('20/11/13','RR/MM/DD'),to_date('20/11/13','RR/MM/DD'));
Insert into TEST.T_BRD_CONT (CONTENTID,BOARDCD,TITLE,CONTENT,CATEGORYSEQ,TAG,READCNT,PASSWORD,ID,PHONE,DTSTART,DTEND,STATUS,IP,UPTDT,REGDT) values (44,1,'글제목','글내용 ',0,null,1,'1234','kiki','0518729453',null,null,'N','0:0:0:0:0:0:0:1',to_date('20/11/13','RR/MM/DD'),to_date('20/11/13','RR/MM/DD'));
Insert into TEST.T_BRD_CONT (CONTENTID,BOARDCD,TITLE,CONTENT,CATEGORYSEQ,TAG,READCNT,PASSWORD,ID,PHONE,DTSTART,DTEND,STATUS,IP,UPTDT,REGDT) values (45,1,'글제목','글내용 ',0,null,0,'1234','kiki','0518729453',null,null,'N','0:0:0:0:0:0:0:1',to_date('20/11/13','RR/MM/DD'),to_date('20/11/13','RR/MM/DD'));
Insert into TEST.T_BRD_CONT (CONTENTID,BOARDCD,TITLE,CONTENT,CATEGORYSEQ,TAG,READCNT,PASSWORD,ID,PHONE,DTSTART,DTEND,STATUS,IP,UPTDT,REGDT) values (46,2,'글제목','글내용 ',0,null,0,'1234','kiki','0518729453',null,null,'N','0:0:0:0:0:0:0:1',to_date('20/11/13','RR/MM/DD'),to_date('20/11/13','RR/MM/DD'));
REM INSERTING into TEST.T_BRD_FILE
SET DEFINE OFF;
Insert into TEST.T_BRD_FILE (FILEID,CONTENTID,ORGFILENAME,STOREDFILENAME,REGDT,USEYN,FILESIZE) values (5,27,'pom.xml','fb9bb988bb354ca3865286fdb6080e34.xml',to_date('20/11/12','RR/MM/DD'),'Y',26651);
Insert into TEST.T_BRD_FILE (FILEID,CONTENTID,ORGFILENAME,STOREDFILENAME,REGDT,USEYN,FILESIZE) values (6,28,'pom.xml','382f773752df49fda82117f3a38ed0ac.xml',to_date('20/11/12','RR/MM/DD'),'Y',26651);
Insert into TEST.T_BRD_FILE (FILEID,CONTENTID,ORGFILENAME,STOREDFILENAME,REGDT,USEYN,FILESIZE) values (7,29,'pom.xml','a6c35af76f014868baa046b01218465d.xml',to_date('20/11/12','RR/MM/DD'),'Y',26651);
Insert into TEST.T_BRD_FILE (FILEID,CONTENTID,ORGFILENAME,STOREDFILENAME,REGDT,USEYN,FILESIZE) values (3,25,'pom.xml','7b6ffc94a2d049fbab911c4195a6f3bf.xml',to_date('20/11/12','RR/MM/DD'),'Y',26651);
Insert into TEST.T_BRD_FILE (FILEID,CONTENTID,ORGFILENAME,STOREDFILENAME,REGDT,USEYN,FILESIZE) values (4,26,'pom.xml','57668854c8f140958fc6e085fb0380ac.xml',to_date('20/11/12','RR/MM/DD'),'Y',26651);
Insert into TEST.T_BRD_FILE (FILEID,CONTENTID,ORGFILENAME,STOREDFILENAME,REGDT,USEYN,FILESIZE) values (21,43,'pom.xml','4c2947168dd74e1c8edffc738335984d.xml',to_date('20/11/13','RR/MM/DD'),'Y',26651);
Insert into TEST.T_BRD_FILE (FILEID,CONTENTID,ORGFILENAME,STOREDFILENAME,REGDT,USEYN,FILESIZE) values (22,45,'pom.xml','2cd41ebed9e84f608394e9e40d4a6126.xml',to_date('20/11/13','RR/MM/DD'),'Y',26651);
Insert into TEST.T_BRD_FILE (FILEID,CONTENTID,ORGFILENAME,STOREDFILENAME,REGDT,USEYN,FILESIZE) values (23,46,'pom.xml','1d4e934124ef4b468aac4b15c1ae28fa.xml',to_date('20/11/13','RR/MM/DD'),'Y',26651);
REM INSERTING into TEST.T_LOGIN_HIST
SET DEFINE OFF;
Insert into TEST.T_LOGIN_HIST (USEQ,PERMISSION,ID,USERNM,HPHONE,IP,REGDT) values (7,999,'admin','관리자','1234567',null,to_date('20/11/11','RR/MM/DD'));
Insert into TEST.T_LOGIN_HIST (USEQ,PERMISSION,ID,USERNM,HPHONE,IP,REGDT) values (8,999,'admin','관리자','1234567',null,to_date('20/11/11','RR/MM/DD'));
Insert into TEST.T_LOGIN_HIST (USEQ,PERMISSION,ID,USERNM,HPHONE,IP,REGDT) values (9,999,'admin','관리자','1234567',null,to_date('20/11/11','RR/MM/DD'));
Insert into TEST.T_LOGIN_HIST (USEQ,PERMISSION,ID,USERNM,HPHONE,IP,REGDT) values (10,999,'admin','관리자','1234567',null,to_date('20/11/11','RR/MM/DD'));
Insert into TEST.T_LOGIN_HIST (USEQ,PERMISSION,ID,USERNM,HPHONE,IP,REGDT) values (11,999,'admin','관리자','1234567',null,to_date('20/11/11','RR/MM/DD'));
Insert into TEST.T_LOGIN_HIST (USEQ,PERMISSION,ID,USERNM,HPHONE,IP,REGDT) values (12,999,'admin','관리자','1234567',null,to_date('20/11/11','RR/MM/DD'));
Insert into TEST.T_LOGIN_HIST (USEQ,PERMISSION,ID,USERNM,HPHONE,IP,REGDT) values (13,999,'admin','관리자','1234567',null,to_date('20/11/11','RR/MM/DD'));
Insert into TEST.T_LOGIN_HIST (USEQ,PERMISSION,ID,USERNM,HPHONE,IP,REGDT) values (14,999,'admin','관리자','1234567',null,to_date('20/11/11','RR/MM/DD'));
Insert into TEST.T_LOGIN_HIST (USEQ,PERMISSION,ID,USERNM,HPHONE,IP,REGDT) values (41,999,'admin','관리자','1234567',null,to_date('20/11/12','RR/MM/DD'));
Insert into TEST.T_LOGIN_HIST (USEQ,PERMISSION,ID,USERNM,HPHONE,IP,REGDT) values (42,999,'admin','관리자','1234567',null,to_date('20/11/12','RR/MM/DD'));
Insert into TEST.T_LOGIN_HIST (USEQ,PERMISSION,ID,USERNM,HPHONE,IP,REGDT) values (46,999,'admin','관리자','1234567',null,to_date('20/11/12','RR/MM/DD'));
Insert into TEST.T_LOGIN_HIST (USEQ,PERMISSION,ID,USERNM,HPHONE,IP,REGDT) values (47,999,'admin','관리자','1234567',null,to_date('20/11/13','RR/MM/DD'));
Insert into TEST.T_LOGIN_HIST (USEQ,PERMISSION,ID,USERNM,HPHONE,IP,REGDT) values (48,999,'admin','관리자','1234567',null,to_date('20/11/13','RR/MM/DD'));
Insert into TEST.T_LOGIN_HIST (USEQ,PERMISSION,ID,USERNM,HPHONE,IP,REGDT) values (50,999,'admin','관리자','1234567',null,to_date('20/11/13','RR/MM/DD'));
Insert into TEST.T_LOGIN_HIST (USEQ,PERMISSION,ID,USERNM,HPHONE,IP,REGDT) values (52,1,'kiki','김키키','01012345678',null,to_date('20/11/13','RR/MM/DD'));
Insert into TEST.T_LOGIN_HIST (USEQ,PERMISSION,ID,USERNM,HPHONE,IP,REGDT) values (53,1,'kiki','김키키','01012345678',null,to_date('20/11/13','RR/MM/DD'));
Insert into TEST.T_LOGIN_HIST (USEQ,PERMISSION,ID,USERNM,HPHONE,IP,REGDT) values (5,1,'admin','관리자','1234567',null,to_date('20/11/11','RR/MM/DD'));
Insert into TEST.T_LOGIN_HIST (USEQ,PERMISSION,ID,USERNM,HPHONE,IP,REGDT) values (6,999,'admin','관리자','1234567',null,to_date('20/11/11','RR/MM/DD'));
Insert into TEST.T_LOGIN_HIST (USEQ,PERMISSION,ID,USERNM,HPHONE,IP,REGDT) values (43,999,'admin','관리자','1234567',null,to_date('20/11/12','RR/MM/DD'));
Insert into TEST.T_LOGIN_HIST (USEQ,PERMISSION,ID,USERNM,HPHONE,IP,REGDT) values (44,999,'admin','관리자','1234567',null,to_date('20/11/12','RR/MM/DD'));
Insert into TEST.T_LOGIN_HIST (USEQ,PERMISSION,ID,USERNM,HPHONE,IP,REGDT) values (45,999,'admin','관리자','1234567',null,to_date('20/11/12','RR/MM/DD'));
Insert into TEST.T_LOGIN_HIST (USEQ,PERMISSION,ID,USERNM,HPHONE,IP,REGDT) values (15,999,'admin','관리자','1234567',null,to_date('20/11/11','RR/MM/DD'));
Insert into TEST.T_LOGIN_HIST (USEQ,PERMISSION,ID,USERNM,HPHONE,IP,REGDT) values (16,999,'admin','관리자','1234567',null,to_date('20/11/11','RR/MM/DD'));
Insert into TEST.T_LOGIN_HIST (USEQ,PERMISSION,ID,USERNM,HPHONE,IP,REGDT) values (17,999,'admin','관리자','1234567',null,to_date('20/11/11','RR/MM/DD'));
Insert into TEST.T_LOGIN_HIST (USEQ,PERMISSION,ID,USERNM,HPHONE,IP,REGDT) values (18,999,'admin','관리자','1234567',null,to_date('20/11/11','RR/MM/DD'));
Insert into TEST.T_LOGIN_HIST (USEQ,PERMISSION,ID,USERNM,HPHONE,IP,REGDT) values (19,999,'admin','관리자','1234567',null,to_date('20/11/11','RR/MM/DD'));
Insert into TEST.T_LOGIN_HIST (USEQ,PERMISSION,ID,USERNM,HPHONE,IP,REGDT) values (21,999,'admin','관리자','1234567',null,to_date('20/11/11','RR/MM/DD'));
REM INSERTING into TEST.T_USER
SET DEFINE OFF;
Insert into TEST.T_USER (USEQ,PERMISSION,ID,USERNM,USERNICK,PASSWORD,EMAIL,HPHONE,PHONE,ZIPCODE,ADDR1,ADDR2,BIRTHDAY,MAILINGYN,USEYN,IPLIMIT,DELETEYN,AUTHDT,REGDT) values (51,1,'kiki','김키키','kiki','1234','kiki@test.com','01012345678','0518729453','123456','부산시','수영구',null,'N','Y',null,'N',null,to_date('20/11/13','RR/MM/DD'));
Insert into TEST.T_USER (USEQ,PERMISSION,ID,USERNM,USERNICK,PASSWORD,EMAIL,HPHONE,PHONE,ZIPCODE,ADDR1,ADDR2,BIRTHDAY,MAILINGYN,USEYN,IPLIMIT,DELETEYN,AUTHDT,REGDT) values (1,999,'admin','관리자','admin','1234','psm','1234567','1234567','123456','부산시','수영구 ','19920211','N','Y',null,'N',null,to_date('20/11/11','RR/MM/DD'));
REM INSERTING into TEST.T_USER_PERMISSION
SET DEFINE OFF;
Insert into TEST.T_USER_PERMISSION (PERMISSIONID,PERMISSION,PERMISSIONNM,USEYN,REGDT) values (1,999,'최종관리자','Y',to_date('20/11/12','RR/MM/DD'));
Insert into TEST.T_USER_PERMISSION (PERMISSIONID,PERMISSION,PERMISSIONNM,USEYN,REGDT) values (2,1,'일반사용자','Y',to_date('20/11/12','RR/MM/DD'));
--------------------------------------------------------
--  DDL for Index SYS_C007676
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."SYS_C007676" ON "TEST"."T_BRD" ("BOARDCD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007684
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."SYS_C007684" ON "TEST"."T_BRD_CONT" ("CONTENTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007689
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."SYS_C007689" ON "TEST"."T_USER_PERMISSION" ("PERMISSIONID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007888
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."SYS_C007888" ON "TEST"."T_USER" ("USEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007926
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."SYS_C007926" ON "TEST"."T_BRD_FILE" ("FILEID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table T_BRD
--------------------------------------------------------

  ALTER TABLE "TEST"."T_BRD" MODIFY ("BOARDCD" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_BRD" MODIFY ("ORDERBY" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_BRD" MODIFY ("RECOMYN" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_BRD" MODIFY ("SCRAPYN" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_BRD" MODIFY ("REPLYYN" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_BRD" MODIFY ("CATEGORYYN" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_BRD" MODIFY ("PERMREAD" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_BRD" MODIFY ("PERMINST" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_BRD" MODIFY ("USEYN" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_BRD" MODIFY ("REGDT" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_BRD" ADD PRIMARY KEY ("BOARDCD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table T_BRD_CONT
--------------------------------------------------------

  ALTER TABLE "TEST"."T_BRD_CONT" MODIFY ("CONTENTID" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_BRD_CONT" MODIFY ("BOARDCD" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_BRD_CONT" MODIFY ("CATEGORYSEQ" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_BRD_CONT" MODIFY ("READCNT" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_BRD_CONT" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_BRD_CONT" MODIFY ("UPTDT" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_BRD_CONT" MODIFY ("REGDT" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_BRD_CONT" ADD PRIMARY KEY ("CONTENTID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table T_BRD_FILE
--------------------------------------------------------

  ALTER TABLE "TEST"."T_BRD_FILE" MODIFY ("CONTENTID" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_BRD_FILE" MODIFY ("ORGFILENAME" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_BRD_FILE" MODIFY ("STOREDFILENAME" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_BRD_FILE" MODIFY ("REGDT" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_BRD_FILE" MODIFY ("USEYN" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_BRD_FILE" ADD PRIMARY KEY ("FILEID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table T_LOGIN_HIST
--------------------------------------------------------

  ALTER TABLE "TEST"."T_LOGIN_HIST" MODIFY ("USEQ" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_LOGIN_HIST" MODIFY ("PERMISSION" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_LOGIN_HIST" MODIFY ("USERNM" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_LOGIN_HIST" MODIFY ("REGDT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table T_USER
--------------------------------------------------------

  ALTER TABLE "TEST"."T_USER" MODIFY ("USEQ" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_USER" MODIFY ("PERMISSION" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_USER" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_USER" MODIFY ("USERNM" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_USER" MODIFY ("USERNICK" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_USER" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_USER" MODIFY ("MAILINGYN" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_USER" MODIFY ("USEYN" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_USER" MODIFY ("DELETEYN" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_USER" MODIFY ("REGDT" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_USER" ADD PRIMARY KEY ("USEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table T_USER_PERMISSION
--------------------------------------------------------

  ALTER TABLE "TEST"."T_USER_PERMISSION" MODIFY ("PERMISSIONNM" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_USER_PERMISSION" MODIFY ("USEYN" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_USER_PERMISSION" MODIFY ("REGDT" NOT NULL ENABLE);
  ALTER TABLE "TEST"."T_USER_PERMISSION" ADD PRIMARY KEY ("PERMISSIONID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table T_BRD_CONT
--------------------------------------------------------

  ALTER TABLE "TEST"."T_BRD_CONT" ADD CONSTRAINT "FK_CODE" FOREIGN KEY ("BOARDCD")
	  REFERENCES "TEST"."T_BRD" ("BOARDCD") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table T_BRD_FILE
--------------------------------------------------------

  ALTER TABLE "TEST"."T_BRD_FILE" ADD CONSTRAINT "FK_FILE_CONTENTID" FOREIGN KEY ("CONTENTID")
	  REFERENCES "TEST"."T_BRD_CONT" ("CONTENTID") ON DELETE CASCADE ENABLE;
