
  CREATE TABLE "WORLDCUP"."WORLDCUP_GROUPS" 
   (	"WC_GROUP" VARCHAR2(1 BYTE), 
	"NATION" VARCHAR2(20 BYTE), 
	"WIN" NUMBER, 
	"DRAW" NUMBER, 
	"LOSS" NUMBER, 
	"GF" NUMBER, 
	"GA" NUMBER, 
	"GD" NUMBER, 
	"POINTS" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
