///ic(x, y, obj);
// Lazy way of "instance_create()"
var xx = argument[0];
var yy = argument[1];
var obj = argument[2];

var spawn = instance_create( xx, yy, obj );

return spawn;
