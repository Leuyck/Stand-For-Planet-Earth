///@description scr_calculShadow(objectMakingShadow, pixelOffset)
///regarde tout ce qu'il y a autour et génère un tableau des coordonnée des murs qui doivent faire de l'ombre
var objectMakingShadow = argument[0];
var pixelOffset = argument[1];

var px1 = noone;
var py1 = noone;
var px2 = noone;
var py2 = noone;

with(objectMakingShadow)
{    
    if(collision_circle(other.lx,other.ly,other.rad,self.id,true,false)!=noone)
    {
        if (point_direction(self.x,self.y,other.lx,other.ly)<=45 || point_direction(self.x,self.y,other.lx,other.ly)>315)||
            (point_direction(self.x,self.y,other.lx,other.ly)<=225 && point_direction(self.x,self.y,other.lx,other.ly)>135)
        {
            var px1 = self.x-sprite_get_xoffset(object_get_sprite(objectMakingShadow))+pixelOffset;
            var py1 = self.y-sprite_get_yoffset(object_get_sprite(objectMakingShadow));
            var px2 = self.x+sprite_get_xoffset(object_get_sprite(objectMakingShadow))-pixelOffset;
            var py2 = self.y+sprite_get_yoffset(object_get_sprite(objectMakingShadow));
        }
        if (point_direction(self.x,self.y,other.lx,other.ly)<=135 && point_direction(self.x,self.y,other.lx,other.ly)>45)||
            (point_direction(self.x,self.y,other.lx,other.ly)<=315 && point_direction(self.x,self.y,other.lx,other.ly)>225)
        {
            var px1 = self.x-sprite_get_xoffset(object_get_sprite(objectMakingShadow));
            var py1 = self.y-sprite_get_yoffset(object_get_sprite(objectMakingShadow))+pixelOffset;
            var px2 = self.x+sprite_get_xoffset(object_get_sprite(objectMakingShadow));
            var py2 = self.y+sprite_get_yoffset(object_get_sprite(objectMakingShadow))-pixelOffset;
        }
        
        other.edgesCreatingShadowArray = scr_getShadowEdgesIntoArray(px1,py1,px2,py2,other.lx,other.ly,other.edgesCreatingShadowArray);
    }
}
