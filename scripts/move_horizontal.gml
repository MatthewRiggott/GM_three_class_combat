//move_horizontal()
//Returns true if a horizontal collision was detected.
repeat(ceil(abs(x_speed)))
{
    //Check for walls
    var wall = place_meeting(x + sign(x_speed ),y,obj_wall);
    var shift = false;
 
    //Moving Up a Slope
    if (wall)
    {
        if (!place_meeting(x + sign(x_speed), y - 1,obj_wall))
        {
               x += sign(x_speed);
               y -= 1;
               shift = true;
        }
        if (!shift)
        { 
            x_speed = 0;
            return(true);
        }
    }
    //Moving Down a Slope
    else
    {
        if (!place_meeting(x + sign(x_speed ),y + 1,obj_wall) && place_meeting(x + sign(x_speed), y + 2,obj_wall))
        {
               x += sign(x_speed );
               y += 1;
               shift = true;
        }
        if (!shift) 
            x += sign(x_speed );
    }
 
}
