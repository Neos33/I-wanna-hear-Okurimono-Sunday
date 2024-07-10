///scrImageCredits( x, y, sprite, title, author, grid, discord, twitter, twitch, [ dimX ], [ dimY ] );
var xPos = argument[0];
var yPos = argument[1];
var sprite = argument[2];
var title = argument[3]
var author = argument[4];
var grid = argument[5];

var discord = argument[6];
var twitter = argument[7];
var twitch = argument[8];

if argument_count > 9
{
    var dimX = argument[9];
    var dimY = argument[10];
}
else
{
    var dimX = 128;
    var dimY = 128;
}

/*for ( var i = 0; i < dimX; i += grid ) 
{ 
    for ( var j = 0; j < dimY; j += grid )
    {
        var image = instance_create( xPos+i, yPos+j, objProfile_PartImage );
        image . xx = i;
        image . yy = j;
        image . sprite_index = sprite;
        image . sep = grid;
    }
}*/

var image = instance_create( xPos, yPos, objNeosProf_TestEff );
image . sprite_index = sprite;
image . w = dimX;
image . h = dimY;
image . h_start = dimY;

var static = instance_create( xPos, yPos, objProfile_StaticImage );
static . sprite_index = sprite;
static . authorName = author;
static . titleName = title;
static . discordName = discord;
static . twitterName = twitter;
static . twitchName = twitch;
