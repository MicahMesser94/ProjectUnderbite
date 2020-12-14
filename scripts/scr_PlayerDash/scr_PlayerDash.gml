/// @function scrPlayerDash();
// this doesn't work
function scr_PlayerDash(){
	
	var playerGravity = 0.1;
	var playerVSpeed = 5;
	
	
	if (player_roll && dashCount = 0)
	{
		hascontrol = false;
		dashCount = 1;
		sprite_index = spr_airDash;
		imageindex = 0;
				
		if (image_xscale > 0)
		{
			grv = playerGravity;
			vsp = -playerVSpeed;
			hsp = dashSpeed;
			
		} 
		else
		{
			grv = playerGravity;
			vsp = -playerVSpeed;
			hsp = -1 * dashSpeed;
			
		}
			
	}
}