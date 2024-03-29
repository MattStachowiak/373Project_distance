#include <stdio.h>
#include <inttypes.h>
#include "drivers/mss_uart/mss_uart.h"

#define BASE_ADDR 0x40050000;

volatile uint32_t* DATA_READ = (uint32_t*) BASE_ADDR;

float data_to_cm(uint32_t in_data){
	// Convert 10nS count to 1mS count
	float cm_data = (float)in_data / 100;
	// Divide by 56 to get data in cm according to datasheet
	return cm_data/56;
}

int main() {


	// It looks like the ultrasonic sensor returns a 0
	// when it gets a packet of bad data

	// Distance in cm = echo pulse width in uS/58
	// DATA contains echo pulse width in
	//uint32_t distance = 0;
	while( 1 ) {
		uint32_t DATA = *DATA_READ;
		//distance = data_to_cm(DATA);
		if(DATA != 0)
			printf("Distance = %5.2f cm; Raw Data = %ld\r\n", data_to_cm(DATA),DATA);
	}
}
