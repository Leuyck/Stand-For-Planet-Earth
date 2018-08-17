/// @description 

// Inherit the parent event
event_inherited();

var collideLocalPlayer = instance_place(x,y,obj_localPlayer);
if(collideLocalPlayer != noone && collideLocalPlayer != bulletFrom){
	if(collideLocalPlayer.state !="dead"){
		if(collideLocalPlayer.currentHealth !=0 && collideLocalPlayer.currentHealth < collideLocalPlayer.maxHealth) {
			collideLocalPlayer.currentHealth+= damage;
			obj_score.totalHeal += damage;
		}
		instance_destroy();
	}
}