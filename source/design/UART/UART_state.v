/*----------------------------------------------------------------------------------------------
---UART STATE MACHINE---

  |<-------------------------------------------------|
  |<---------------------------------------|         |
IDLE ---> START ---> DATA ---> STOP ---> WAIT ---> ERROR 
                       |        |          |         |
                       |        |          |-------->|   
                       |        |------------------->|
                       |---------------------------->| 
                       
Primul bit esantionat reprezinta bit-ul de START, care trebuie sa fie 0. 
In caz contrar se considera ca a fost un start fals si se reincepe transmisia la detectarea unui nou bit de start. 
Urmatorii 8 biti esantionati reprezinta bitii de DATE, care pot lua valoare de 0 sau 1. 
In cazul in care paritatea este activata, urmatorul bit reprezinta bit-ul de PARITY, care este verificat. 
In cazul in care paritatea nu este valida, se semnaleaza eroarea, se considera ca datele transmise au fost corupte si se reincepe transmisia la detectarea unui nou bit de start. 
Urmatorul bit/biti reprezinta bit-ul/bitii de STOP, care trebuie sa fie pe 1. 
In caz contrar se semnaleaza eroarea, se considera ca datele transmise nu au fost esantionate corect si se reincepe transmisia la detectarea unui nou bit de start. 
Daca toti bitii verificati (START, PARITY, STOP) sunt valizi, atunci counicarea a avut succes.
*///----------------------------------------------------------------------------------------------




module UART_state
  #(`include "../PARAM/UART_params.v")
(
input clk,
input rst_n,

input parity_bit_config,
input stop_bit_config,

input data,
input valid_data,

output [WIDTH_ERROR-1:0]   error,
output valid_error,

output [WIDTH_DATABITS-1:0]out,
output valid_out
);

`include "../PARAM/CS_params.v"
`include "../PARAM/CS_errors.v"

reg [WIDTH_UART_STATES-1:0]state_reg, state_next;

parameter IDLE  = 'b000;
parameter START = 'b001;
parameter DATA  = 'b010;
parameter STOP  = 'b011;
parameter WAIT  = 'b100;
parameter ERROR = 'b101; 

reg [WIDTH_ERROR-1:0]   error_reg, error_next;
reg [WIDTH_DATABITS-1:0]out_reg, out_next;
reg                     valid_error_reg, valid_error_next;
reg                     valid_out_reg, valid_out_next;

reg [WIDTH_DATABITS_SIZE-1:0]   data_iteration_step_reg, data_iteration_step_next;
reg                             parity_check_reg, parity_check_next;
reg [WIDHT_PARITY_STOP_BITS-1:0]stop_iteration_step_reg, stop_iteration_step_next;
reg [WIDTH_IDLE_BITS-1:0]       wait_iteration_step_reg, wait_iteration_step_next;

always @(posedge clk or negedge rst_n) begin
	if(~rst_n) begin
		state_reg               <= IDLE;
		error_reg               <= NO_ERRORS;
		out_reg                 <= 'b0;
		valid_error_reg         <= 1'b0;
		valid_out_reg           <= 1'b0;
		data_iteration_step_reg <= 'b0;
		parity_check_reg        <= 'b0;
		stop_iteration_step_reg <= 'b0;
		wait_iteration_step_reg <= 'b0;
	end	else begin
		state_reg               <= state_next;
		error_reg               <= error_next;
		out_reg                 <= out_next;
		valid_error_reg         <= valid_error_next;
		valid_out_reg           <= valid_out_next;
		data_iteration_step_reg <= data_iteration_step_next;
		parity_check_reg        <= parity_check_next;
		stop_iteration_step_reg <= stop_iteration_step_next;
		wait_iteration_step_reg <= wait_iteration_step_next;
	end
end

always @(*) begin
  state_next               = state_reg;
  error_next               = error_reg;
  out_next                 = out_reg;
  valid_error_next         = valid_error_reg;
  valid_out_next           = valid_out_reg;
  data_iteration_step_next = data_iteration_step_reg;
  stop_iteration_step_next = stop_iteration_step_reg;
  parity_check_next        = parity_check_reg;
  wait_iteration_step_next = wait_iteration_step_reg;
  
  if(valid_data) begin
	  case(state_reg)
	    IDLE: begin
	      valid_out_next   = 1'b0;
		    valid_error_next = 1'b0;
	      if(!data) begin // received a negedge signal, which means that the transmision started
	        state_next = DATA;
  	       error_next = 'd0;
	        out_next = 'd0;
	        data_iteration_step_next = 'd0;
	        stop_iteration_step_next = 'd0;
	        wait_iteration_step_next = 'd0;
	        parity_check_next = 1'b0;
	      end
	    end
	    DATA: begin
	      out_next = {out_reg[6:0], data}; // the data is shifted and saved in the output register
	      parity_check_next = parity_check_reg ^ data;
	      data_iteration_step_next = data_iteration_step_reg + 1;
	      if(data_iteration_step_reg == 7) begin // if the 8 bits where read
	        state_next = STOP;
	      end
	    end
	    STOP: begin	  
	      stop_iteration_step_next = stop_iteration_step_reg + 1;
		    if(stop_iteration_step_reg == 0) begin
			    if(parity_bit_config) begin
				    if(data != parity_check_reg) begin
					    error_next = FAILED_PARITY_BIT;
					    state_next = ERROR;
				    end
			    end else begin
				    if(!data) begin
					    error_next = FAILED_STOP_BITS;
					    state_next = ERROR;
			     	end else begin
			     	  if(!stop_bit_config) begin
				        state_next = WAIT;
				      end
				    end
			    end
		    end
		    else if(stop_iteration_step_reg == 1) begin
			    if(!data) begin
				    error_next = FAILED_STOP_BITS;
				    state_next = ERROR;
			    end else begin
			      if(!stop_bit_config) begin
			        state_next = WAIT;
			      end
			    end
		    end else begin
			    if(!data) begin
				    error_next = FAILED_STOP_BITS;
            state_next = ERROR;
	      		end else begin
			      state_next = WAIT;
			    end
		    end
	    end
	    WAIT: begin
			  wait_iteration_step_next = wait_iteration_step_reg + 1;
	      if(data) begin //the idle bit was valid (1)
	        if(wait_iteration_step_reg == 0) begin // first iteration trough WAIT state
	          wait_iteration_step_next = wait_iteration_step_reg + 1;
	        end else begin // second iteration trough WAIT state - the communication was succesfull
	          valid_out_next = 1'b1;
	          state_next = IDLE;
	        end
	      end else begin // wrong idle bit - report error
	        error_next = FAILED_IDLE_BITS;
	        state_next = ERROR;
        end
   	  end
	    ERROR: begin
	      valid_error_next = 1'b1;
	      state_next       = IDLE;
	    end
	  endcase
	end	else begin
	  valid_out_next   = 1'b0;
		valid_error_next = 1'b0;
  end
end

assign error       = error_reg;
assign valid_error = valid_error_reg;
assign out         = out_reg;
assign valid_out   = valid_out_reg;

endmodule