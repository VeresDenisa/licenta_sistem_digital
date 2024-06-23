parameter WIDTH_PARITY = 2,
parameter WIDTH_BAUDRATE = 3,
parameter WIDTH_RESOLUTION = 2,
parameter WIDTH_CONFIG_ADDR = 4,
parameter WIDTH_CONFIG_DATA = 8,

parameter WIDTH_SAMPLING_DATA = 4, // nr of sample bits -> 4 bits = 16 samples
parameter WIDTH_DATABITS = 8, // nr of UART configuration databits (unchangeable)
parameter WIDTH_DATABITS_SIZE = 3, // nr of bits requiRED to store the databit location
parameter WIDHT_PARITY_STOP_BITS = 2, // nr of bits requiRED to store the "parity stop" location
parameter WIDTH_UART_STATES = 3, // the width of the 6 states in the UART_state module

parameter WIDTH_IDLE_BITS = 2, // check the next 2 bits of idle
parameter WIDTH_ERROR = 2, // UART output error size

parameter SAMPLE_LIMIT_LOW = 3, // sampling low limit 
parameter SAMPLE_LIMIT_HIGH = 12 // sampling high limit
