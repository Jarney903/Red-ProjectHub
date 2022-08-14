SELECT lab."Date",
	lab.N_Butane,
	rx.TB_Recycle_Charge,
	rx.NorthTC_Charge,
	rx.North_Flush_Pressure,
	rx.North_Out_Temp,
	rx.SouthTA_Recycle_Charge,
	rx.SouthTC_Charge,
	rx.South_Flush_Pressure,
	rx.South_Out_Temp,
	rx.South_Water_Return_Temp,
	rx.South_Water_Return_PH,
	rx.Out_Delta_Temp,
	ta.TA_Charge,
	ta.TA_Overhead_Pressure,
	ta.TA_Tray4_Temp,
	ta.TA_Overhead_Temp,
	ta.TA_Recieved_PCT,
	ta.TA_Received_Pressure,
	ta.TA_Recycle_to_Contact,
	ta.TA_Recycle_to_Contact_Temp,
	ta.TA_Tray39_Temp,
	ta.TA_Tray45_Temp,
	ta.TA_Differential_Pressure,
	ta.TA_Bottom_Pressure,
	ta.TA_Bottom_lvl_PCT,
	ta.TA_Bottom_Reboil_Temp,
	ta.TA_Top_Reboil_Temp,
	tb.TB_Charge,
	tb.TB_Charge_Condensor,
	tb.TB_Charge_Temp,
	tb.TB_Overhead_Temp,
	tb.TB_Overhead_Pressure,
	tb.TB_Overhead_Receiver_Pressure,
	tb.TB_Overhead_Receiver_Temp,
	tb.TB_Overhead_Reciever_LVL_PCT,
	tb.TB_Bottom_Pressure,
	tb.TB_Bottom_LVL_PCT ,
	tb.TB_Differential_Pressure,
	tb.TB_Bottom_Temp,
	tb.TB_Reboil_Out_Temp,
	tc.TC_Tray7_Temp,
	tc.TC_Tray40_Temp,
	tc.TC_Charge_Temp,
	tc.TC_Overhead_Pressure,
	tc.TC_Overhead_Reciever_Temp,
	tc.TC_Tray24_Temp,
	tc.TC_Differential_Pressure,
	tc.TC_Bottom_Pressure,
	tc.TC_Reboil_Out_Temp,
	tc."TC_Reboil_Condensor_lbs"
INTO project_data
FROM lab_data AS lab
     INNER JOIN reactor_data AS rx
     ON (lab."Date" = rx."Date")
 	 INNER JOIN tower_a AS ta
     ON (lab."Date" = ta."Date")
 	 INNER JOIN tower_b AS tb
     ON (lab."Date" = tb."Date")
	 INNER JOIN tower_c AS tc
     ON (lab."Date" = tc."Date");

	
	