//move_vertical()
//Returns 1 if collision is below calling object, -1 if above.
repeat (ceil(abs(y_speed)))
{
    if (place_meeting(x, y + sign(y_speed), obj_block))
    {
        return(sign(y_speed));
    }
    else
        y+= sign(y_speed);
}
