-- Creating tables for Lab Data
-- Wrap column name in "double quotes" to avoid names that look like keywords
CREATE TABLE labdata (
	"Index" INT,
     "Date" VARCHAR NOT NULL,
     "TA.OVH.RECYCLE.NC4.VOLPCT" VARCHAR,
	Primary Key ("Date")
);

-- Creating tables for RX Data
CREATE TABLE rxdata (
	"Index" INT,
     "Date" VARCHAR NOT NULL,
     "RX.TB.RECYCLE.CHARGE.BPD" VARCHAR,
	 "RX.TB.RECYCLE.CHARGE.PCT" VARCHAR,
	 "RX.NORTH.TC.CHARGE.BPD" VARCHAR,
	 "RX.NORTH.TC.CHARGE.CV.PCT" VARCHAR,
	 "RX.NORTH.FLUSH.PSIG" VARCHAR,
	 "RX.NORTH.OUT.F" VARCHAR,
	 "RX.SOUTH.TA.RECYCLE.CHARGE.BPD" VARCHAR,	
	 "RX.SOUTH.TA.RECYCLE.CHARGE.PCT" VARCHAR,
	 "RX.SOUTH.TC.CHARGE.BPD" VARCHAR,
	 "RX.SOUTH.TC.CHARGE.CV.PCT" VARCHAR,
	 "RX.SOUTH.FLUSH.PSIG" VARCHAR,
	 "RX.SOUTH.OUT.F" VARCHAR,
	 "RX.SOUTH.WATERRETURN.F" VARCHAR,
	 "RX.SOUTH.WATERRETURN.PH" VARCHAR,
	 "RX.OUT.DELTA.F" VARCHAR,
	Primary Key ("Date")
);


-- Creating tables for TA Data
CREATE TABLE tadata (
	"Index" INT,
    "Date" VARCHAR NOT NULL,
	"TA.Charge.BPD" VARCHAR,
	"TA.OH.PSIG" VARCHAR,
	"TA.Tray4.F" VARCHAR,
	"TA.OH.F" VARCHAR,
	"TA.RECV.PCT" VARCHAR,
	"TA.RECV.PSIG" VARCHAR,
	"TA.RECYCLE.TO.CONTACT.BPD" VARCHAR,
	"TA.RECYCLE.TO.CONTACT.F" VARCHAR,	
	"TA.TRAY39.F" VARCHAR,	
	"TA.TRAY45.F" VARCHAR,	
	"TA.DP.PSIG" VARCHAR,	
	"TA.BTM.PSIG" VARCHAR,	
	"TA.BTM.LEVEL.PCT" VARCHAR,	
	"TA.BTM.REBOIL.OUT.F" VARCHAR,	
	"TA.TOP.REBOIL.OUT.F" VARCHAR,
	Primary Key ("Date")
);


-- Creating tables for TB Data
CREATE TABLE tbdata (
	"Index" INT,
    "Date" VARCHAR NOT NULL,
	"TB.CHARGE.BPD"	VARCHAR,
	"TB.CHARGE.PREHEAT.COND.LBHR" VARCHAR,	
	"TB.CHARGE.F" VARCHAR,	
	"TB.OVHD.F" VARCHAR,	
	"TB.OVHD.PSIG" VARCHAR,	
	"TB.OVHD.REVEIVER.PSIG" VARCHAR,	
	"TB.OVHD.REVEIVER.F" VARCHAR,	
	"TB.OVHD.REVEIVER.LVL.PCT" VARCHAR,	
	"TB.BTM.PSIG" VARCHAR,	
	"TB.BTM.LVL.PCT" VARCHAR,	
	"TB.DP.PSIG" VARCHAR,	
	"TB.BTM.F" VARCHAR,	
	"TB.REBOIL.OUT.F" VARCHAR,
	Primary Key ("Date")
);


-- Creating tables for TC Data
CREATE TABLE tcdata (
	"Index" INT,
    "Date" VARCHAR NOT NULL,
	"TC.TRAY7.F" VARCHAR,
	"TC.TRAY40.F" VARCHAR,
	"TC.CHARGE.F" VARCHAR,
	"TC.OVHD.PSIG" VARCHAR,
	"TC.OVHD.RECVR.F" VARCHAR,	
	"TC.TRAY24.F" VARCHAR,	
	"TC.DP.PSIG" VARCHAR,
	"TC.BTM.PSIG" VARCHAR,	
	"TC.REBOIL.OUT.F" VARCHAR,	
	"TC.REBOIL.COND.LBHR" VARCHAR,
	Primary Key ("Date")
);


-- -- Merge Tables
-- -- Example from Module 7.3.5
drop table if exists project_data; 

SELECT  lab."Date",
		lab."Index",
     	lab."TA.OVH.RECYCLE.NC4.VOLPCT",
     	rx."RX.TB.RECYCLE.CHARGE.BPD",
	 	rx."RX.TB.RECYCLE.CHARGE.PCT",
	 	rx."RX.NORTH.TC.CHARGE.BPD",
	 	rx."RX.NORTH.TC.CHARGE.CV.PCT",
	 	rx."RX.NORTH.FLUSH.PSIG",
	 	rx."RX.NORTH.OUT.F",
		rx."RX.SOUTH.TA.RECYCLE.CHARGE.BPD",	
		rx."RX.SOUTH.TA.RECYCLE.CHARGE.PCT",
	 	rx."RX.SOUTH.TC.CHARGE.BPD",
	 	rx."RX.SOUTH.TC.CHARGE.CV.PCT",
	 	rx."RX.SOUTH.FLUSH.PSIG",
	 	rx."RX.SOUTH.OUT.F",
	 	rx."RX.SOUTH.WATERRETURN.F",
	 	rx."RX.SOUTH.WATERRETURN.PH",
	 	rx."RX.OUT.DELTA.F",
		ta."TA.Charge.BPD",
		ta."TA.OH.PSIG",
		ta."TA.Tray4.F",
 		ta."TA.OH.F",
 		ta."TA.RECV.PCT",
  		ta."TA.RECV.PSIG",
 		ta."TA.RECYCLE.TO.CONTACT.BPD",
  		ta."TA.RECYCLE.TO.CONTACT.F",	
 		ta."TA.TRAY39.F",	
		ta."TA.TRAY45.F",	
  		ta."TA.DP.PSIG",	
 		ta."TA.BTM.PSIG",	
 		ta."TA.BTM.LEVEL.PCT",	
  		ta."TA.BTM.REBOIL.OUT.F",	
 		ta."TA.TOP.REBOIL.OUT.F",
		tb."TB.CHARGE.BPD",
		tb."TB.CHARGE.PREHEAT.COND.LBHR",	
 		tb."TB.CHARGE.F",	
 		tb."TB.OVHD.F",	
 		tb."TB.OVHD.PSIG",	
 		tb."TB.OVHD.REVEIVER.PSIG",	
 		tb."TB.OVHD.REVEIVER.F",	
 		tb."TB.OVHD.REVEIVER.LVL.PCT",	
 		tb."TB.BTM.PSIG",	
 		tb."TB.BTM.LVL.PCT",	
 		tb."TB.DP.PSIG",	
 		tb."TB.BTM.F",	
 		tb."TB.REBOIL.OUT.F",		
 		tc."TC.TRAY7.F",
 		tc."TC.TRAY40.F",
 		tc."TC.CHARGE.F",
 		tc."TC.OVHD.PSIG",
 		tc."TC.OVHD.RECVR.F",	
 		tc."TC.TRAY24.F",	
 		tc."TC.DP.PSIG",
 		tc."TC.BTM.PSIG",	
 		tc."TC.REBOIL.OUT.F",	
 		tc."TC.REBOIL.COND.LBHR"
INTO project_data
FROM labdata AS lab
     INNER JOIN rxdata AS rx
     ON (lab."Date" = rx."Date")
 	 INNER JOIN tadata AS ta
     ON (lab."Date" = ta."Date")
 	 INNER JOIN tbdata AS tb
     ON (lab."Date" = tb."Date")
	 INNER JOIN tcdata AS tc
     ON (lab."Date" = tc."Date");



