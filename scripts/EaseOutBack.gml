/// EaseOutBack(time,start,end,duration)
var _s = 1.70158;

argument0 = argument0/argument3 - 1;
return (argument2-argument1) * (argument0 * argument0 * ((_s + 1) * argument0 + _s) + 1) + argument1;
