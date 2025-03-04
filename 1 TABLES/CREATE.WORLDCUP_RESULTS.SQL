
  CREATE TABLE "WORLDCUP"."WORLDCUP_RESULTS" 
   (	"MATCH_NO" NUMBER, 
	"NATION" VARCHAR2(20 BYTE), 
	"OPPONENT" VARCHAR2(20 BYTE), 
	"RESULT" VARCHAR2(20 BYTE), 
	"GF" NUMBER(2,0), 
	"GA" NUMBER(2,0), 
	"GD" NUMBER, 
	"POINTS" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
