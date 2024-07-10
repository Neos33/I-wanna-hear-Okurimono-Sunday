///scrMakeCircle( x, y, angle, numprojectiles, speed, obj )
///spawns a ring of projectiles
///argument0 - spawn X
///argument1 - spawn Y
///argument2 - starting angle
///argument3 - number of projectiles to spawn
///argument4 - speed
///argument5 - projectile to spawn

var spawnX = argument[0];
var spawnY = argument[1];
var spawnAngle = argument[2];
var spawnNum = argument[3];
var spawnSpeed = argument[4];
var spawnObj = argument[5];
var a;

for ( var i = 0; i < spawnNum; i += 1 )
{
    a = instance_create( spawnX, spawnY, spawnObj );
    a.speed = spawnSpeed;
    a.direction = spawnAngle + i * ( 360 / spawnNum );
}
