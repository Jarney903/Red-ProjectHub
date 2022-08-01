-- Creating tables for Lab Data
-- Wrap column name in "double quotes" to avoid names that look like keywords
CREATE TABLE labdata (
	"Index" INT,
     "Date" VARCHAR NOT NULL,
     "TA.OVH.RECYCLE.NC4.VOLPCT" VARCHAR
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
	 "RX.OUT.DELTA.F" VARCHAR
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
	"TA.TOP.REBOIL.OUT.F" VARCHAR
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
	"TB.REBOIL.OUT.F" VARCHAR
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
	"TC.REBOIL.COND.LBHR" VARCHAR
);


-- -- List of managers per department
-- -- Example from Module 7.3.5

-- SELECT  dm.dept_no,
--         d.dept_name,
--         dm.emp_no,
--         ce.last_name,
--         ce.first_name,
--         dm.from_date,
--         dm.to_date
-- INTO manager_info
-- FROM dept_manager AS dm
--     INNER JOIN departments AS d
--         ON (dm.dept_no = d.dept_no)
--     INNER JOIN current_emp AS ce
--         ON (dm.emp_no = ce.emp_no);