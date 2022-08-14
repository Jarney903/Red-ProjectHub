CREATE TABLE Lab_Data (
	"Index" int,
	"Date" varchar,
	N_Butane real,
	primary key ("Date")
);


CREATE TABLE Reactor_Data (
	"Index" int,
	"Date" varchar,
	TB_Recycle_Charge real,
	NorthTC_Charge real,
	North_Flush_Pressure real,
	North_Out_Temp real,
	SouthTA_Recycle_Charge real,
	SouthTC_Charge real,
	South_Flush_Pressure real,
	South_Out_Temp real,
	South_Water_Return_Temp real,
	South_Water_Return_PH real,
	Out_Delta_Temp real,
	primary key ("Date")
);


CREATE TABLE Tower_A (
	"Index" int,
	"Date" varchar,
	TA_Charge real,
	TA_Overhead_Pressure real,
	TA_Tray4_Temp real,
	TA_Overhead_Temp real,
	TA_Recieved_PCT real,
	TA_Received_Pressure real,
	TA_Recycle_to_Contact real,
	TA_Recycle_to_Contact_Temp real,
	TA_Tray39_Temp real,
	TA_Tray45_Temp real,
	TA_Differential_Pressure real,
	TA_Bottom_Pressure real,
	TA_Bottom_lvl_PCT real,
	TA_Bottom_Reboil_Temp real,
	TA_Top_Reboil_Temp real,
	primary key ("Date")
);


CREATE TABLE Tower_B (
	"Index" int,
	"Date" varchar,
	TB_Charge real,
	TB_Charge_Condensor real,
	TB_Charge_Temp real,
	TB_Overhead_Temp real,
	TB_Overhead_Pressure real,
	TB_Overhead_Receiver_Pressure real,
	TB_Overhead_Receiver_Temp real,
	TB_Overhead_Reciever_LVL_PCT real,
	TB_Bottom_Pressure real,
	TB_Bottom_LVL_PCT real,
	TB_Differential_Pressure real,
	TB_Bottom_Temp real,
	TB_Reboil_Out_Temp real,
	primary key ("Date")
);

CREATE TABLE Tower_C (
	"Index" int,
	"Date" varchar,
	TC_Tray7_Temp real,
	TC_Tray40_Temp real,
	TC_Charge_Temp real,
	TC_Overhead_Pressure real,
	TC_Overhead_Reciever_Temp real,
	TC_Tray24_Temp real,
	TC_Differential_Pressure real,
	TC_Bottom_Pressure real,
	TC_Reboil_Out_Temp real,
	"TC_Reboil_Condensor_lbs" real,
	primary key ("Date")
);
