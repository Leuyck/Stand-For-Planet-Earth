var targetHero = noone;
if(heroSpotted) {
    targetHero = src_getTheNearestHeroFromNpc(id);
}
else {
    targetHero = src_getTheNearestVisibleHeroFromNpc(id);
}
return targetHero;

