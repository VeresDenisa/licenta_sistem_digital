 
/*
Module Name: Conter  
This module provides the sincrpnization signals as well as internal counter for the modules 
 
Expected Counter_sync output  ___+-------------+___+-------------+___+-------------+___+-------------+___...,
where the signal is low for the Sync_pulse time duration and after goes active until the CountP reach the 
Count_max value.
*/

module VGA_Counter
	#(`include "../PARAM/VGA_Width_Parameters.v")
	(input clk,
	input rst_n,
	input [PULSE_WIDTH-1:0] Sync_pulse,
	input [REZ_MAX_WIDTH-1:0] Count_max,
	output  Counter_sync,
	output  [REZ_MAX_WIDTH-1:0] CounterP);

	reg							Sync_State_reg, Sync_State_nxt;	
	reg	[REZ_MAX_WIDTH-1:0]  	Count_reg, Count_nxt;
	
	always@(posedge clk or negedge rst_n)
	begin
		if(~rst_n)
		begin
			Sync_State_reg	<= 0;
			Count_reg		<= 0;
		end
		else
		begin
			Sync_State_reg	<= Sync_State_nxt;
			Count_reg		<= Count_nxt;
		end
	end
	
	always@*
	begin
		Sync_State_nxt 	= Sync_State_reg;
		Count_nxt 		= Count_reg;
		
		if(Count_reg < Count_max)
		begin
			Count_nxt = Count_reg + 1;
			
			if(Count_reg > Sync_pulse)
				Sync_State_nxt = 1;
			else
				Sync_State_nxt = 0;
		end
		else
		begin 
			//end of the row or column
			Count_nxt 	   = 0;
			Sync_State_nxt = 0;
		end
	end
	
	assign Counter_sync	= Sync_State_reg;
	assign CounterP		= Count_reg;
	
endmodule