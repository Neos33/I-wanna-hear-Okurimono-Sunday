///scrPlayerShoot()
if !instance_exists(objPlayerRotation)
{
    if (!global.dotKid && instance_number(objBullet) < 4) {
        instance_create(x, y, objBullet);
        audio_play_sound(sndShoot, 0, false);
        scrEarnAchievement(1);
    }
}
/*else
{
    if (!global.dotKid && instance_number(objBullet) < 4) {
        var o = instance_create(objPlayerRotation.x, objPlayerRotation.y, objBullet);
        o . direction = objPlayerRotation.rotation-90;
        audio_play_sound(sndShoot, 0, false);
        scrEarnAchievement(1);
    }
}
