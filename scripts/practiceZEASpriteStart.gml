///practiceZEASpriteStart( [visible] );
//if global.normalPerformance
//{
    if instance_exists(objZeaCorneliaShows)
    {
        instance_destroy(objZeaCorneliaShows);
        var ZEA = ic(96,128,objZeaCornelia);
        ZEA . visible = argument[0];
    }
//}
