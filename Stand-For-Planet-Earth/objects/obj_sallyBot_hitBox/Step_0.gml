/// @description 
x = obj_sallyBot.x;
y = obj_sallyBot.y;
image_angle = obj_sallyBot.image_angle;
var damage = obj_sallyBot.damage;
var spriteIndex = sprite_index;
scr_setSallyBotHitBoxSpriteIndex();

if(spriteIndex != sprite_index) then ds_list_clear(hittedHeroes);
var collideLocalPlayer = instance_place(x,y,obj_localPlayer);
if(collideLocalPlayer != noone && ds_list_find_index(hittedHeroes,collideLocalPlayer)==-1){
	ds_list_add(hittedHeroes,collideLocalPlayer);
	if(collideLocalPlayer.glitch==noone){
		if (collideLocalPlayer.deployed != false && collideLocalPlayer.currentHealth > 0 && collideLocalPlayer.bonusInvincible == false){
			collideLocalPlayer.currentHealth -= damage;

			if(instance_exists(obj_score)){
				obj_score.totalDamageTaken+=damage;
			}
			scr_createGlitch(collideLocalPlayer,obj_glitch);
		}
	}
}