PROGRAM _INIT
(* init program *)
END_PROGRAM

PROGRAM _CYCLIC
(* is calibrated? *)
IF calibrationDone = 0 THEN
	(* Get VC_HANDLE *)
	VC_HANDLE := VA_Setup(1 , 'Visu');
    IF VC_HANDLE <> 0 THEN
		IF VA_Saccess(1,VC_HANDLE) = 0 THEN
			(*	start calibration *)
        	calibrationStatus := VA_StartTouchCal(1,VC_HANDLE);
			VA_Srelease(1,VC_HANDLE);
			calibrationDone := 1;
		END_IF
	END_IF
END_IF
END_PROGRAM

