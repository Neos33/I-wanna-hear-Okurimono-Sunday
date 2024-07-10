///scrTOscillate(magnitude,period,offset)

/* Calculates an oscillating value with the given parameters.
  
   magnitude - distance the value deviates from 0
   period - number of steps it takes to do a full positive and negative cycle

   Note: depends on the global variable "count" being incremented by 1 every step
  
*/

var magnitude = argument[0];
var period = argument[1];
var offset = argument[2];
var count = tt;

return magnitude * sin(((count + offset) mod period)/period*pi*2)
