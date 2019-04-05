// Vision Assistance
// Distance Sensor Module
// HC-SR04 Distance Sensor
 
/*  
    Authored by:
    Darshin Patel
    Matthew Stachowiak
    Michael Manceor
    Nathan Vollbrecht
*/
 
// Distance = (Echo time * Speed of sound[340m/s])/s
// Max distance = 4m : 23.594ms flight time
 
/*  TODO:
    Consider adding logic to check for synchronization
    It is possible for data to become extremely unreliable if
    the time of flight is longer than the trigger period.
    This could be resolved by adding a counter for the number
    of triggers sent and the number of responses received.
    Then you could just hold to send another trigger until a negative edge is received.
 
    Another option: Only send triggers when the negedge of data is
    received and then include a timeout after a counter overflows.
    This is riskier but easier to implement and debug.
*/
 
module DistanceSensor(
    input PCLK, // clock 100 MHz, T = 10ns
    input PRESERN, // system reset
    //APB3 BUS INTERFACE
    input PSEL, // peripheral select
    input PENABLE, // distinguishes access phase
    output wire PREADY, // peripheral ready signal
    output wire PSLVERR, // error signal
    input PWRITE, // read/write control bit
    input [31:0] PADDR, // IO address
    input wire [31:0] PWDATA, // (processor) bus is writing data to
    // this device 32 bits
    output reg [31:0] PRDATA, // (processor) bus is reading data from this device
    output reg trigger,
    input wire echo
);
 
    assign PSLVERR = 0; // Set error to 0
    assign PREADY = 1; // Always publish distance data
 
    wire write_enable = (PENABLE && PWRITE && PSEL);
    wire read_enable = (!PWRITE && PSEL);
 
    reg is_reading;
 
    // TODO: Testing rollover checking
    // Counter
    reg [31:0] count, senttrigger = 0, receivetrigger = 0;
    // 100000 Clock periods correlates to 1 ms operational period
    always@ (posedge PCLK) begin
        if (count < 100000) begin
            count <= count + 1;
            // Trigger pulse
            if (count > 1000)
                trigger <= 0; 
        end
        else begin
            count <= 0;
            trigger <= 1;
        end
    end
    
 
    // Receive Data
    reg echo_1,echo_0;
    reg [31:0] data;
    reg [31:0] data_buffer;
    always@ (posedge PCLK) begin
        // Use shift registers to detect positive echo edge
        echo_0 <= echo;
    	echo_1 <= echo_0;
        
        
        data_buffer <= data_buffer + 1;
        
        if (echo_1 ^ echo_0) begin
            // Positive Edge
            if(echo_0)
                data_buffer <= 0;
            else
                data <= data_buffer;
        end
    end
    
    always@*
        PRDATA = data;
 
endmodule
