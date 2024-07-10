///scrAttCreateSamba( addX, addY, number, constant, distanceStart, startAngle );
// 3D star pattern

var xx = argument[0];
var yy = argument[1];
var numberCherrys = argument[2];
var constant = argument[3];
var dist_start = argument[4];
var angle = argument[5];

//for (var i=0; i<360; i+=360/numberCherrys)
for ( var i = 0; i < numberCherrys; i += 1 )
{
    var ss = instance_create( 400, 304, objS9_AttSamba3D );
    ss . parent = id;
    ss . addX = xx;
    ss . addY = yy;
    ss . dist = dist_start;
    ss . alarm[0] = 1;
    ss . dire = angle + constant + i * ( 360 / numberCherrys );
    ss . image_index = i;
    ss . direSPD = 3;
    ss . dirVertical_speed = 2; //3
}
