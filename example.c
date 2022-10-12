#include <stdio.h>
#include "stopwatch.h"

int main() {
	stopwatch_t sw = stopwatch_new();
	
	stopwatch_start(sw);
	printf("Hello world\n");
	stopwatch_stop(sw);
	
	printf("%f seconds elapsed.\n", stopwatch_time(sw));
	
	stopwatch_free(sw);
}

