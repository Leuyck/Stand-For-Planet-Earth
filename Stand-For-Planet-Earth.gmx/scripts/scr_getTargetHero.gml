var npc = argument[0];
var targetHero = noone;
if(heroSpotted) {
    targetHero = instance_nearest(npc.x, npc.y, obj_localPlayer);
}
else {
    targetHero = src_getTheNearestVisibleHeroFromNpc(id);
}
return targetHero;

