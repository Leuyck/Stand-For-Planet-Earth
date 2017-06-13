///@description scr_calculShadow_mur_epais()
///regarde tout ce qu'il y a autour et génère un tableau des coordonnée des murs qui doivent faire de l'ombre
var px1 = noone;
var py1 = noone;
var px2 = noone;
var py2 = noone;

with(obj_mur_epais)
{
    if(collision_circle(other.lx,other.ly,other.rad,self.id,true,false)!=noone)
    {
		if (point_direction(self.x,self.y,other.lx,other.ly)<=45 || point_direction(self.x,self.y,other.lx,other.ly)>315)||
			(point_direction(self.x,self.y,other.lx,other.ly)<=225 && point_direction(self.x,self.y,other.lx,other.ly)>135)
		{
			var px1 = self.x-sprite_get_xoffset(spr_mur_epais)+9;
			var py1 = self.y-sprite_get_yoffset(spr_mur_epais);
			var px2 = self.x+sprite_get_xoffset(spr_mur_epais)-9;
			var py2 = self.y+sprite_get_yoffset(spr_mur_epais);
		}
		if (point_direction(self.x,self.y,other.lx,other.ly)<=135 && point_direction(self.x,self.y,other.lx,other.ly)>45)||
			(point_direction(self.x,self.y,other.lx,other.ly)<=315 && point_direction(self.x,self.y,other.lx,other.ly)>225)
		{
			var px1 = self.x-sprite_get_xoffset(spr_mur_epais);
			var py1 = self.y-sprite_get_yoffset(spr_mur_epais)+9;
			var px2 = self.x+sprite_get_xoffset(spr_mur_epais);
			var py2 = self.y+sprite_get_yoffset(spr_mur_epais)-9;
		}
		
		if( !scr_signTest( px1,py1, px2,py1, other.lx,other.ly))
		{
			var arraySize = array_height_2d(other.objectInLightArray);
		
			other.objectInLightArray[arraySize,3] = py1;
			other.objectInLightArray[arraySize,2] = px2;
			other.objectInLightArray[arraySize,1] = py1;
			other.objectInLightArray[arraySize,0] = px1;
		}
		if( !scr_signTest( px2,py1, px2,py2, other.lx,other.ly))
		{
			var arraySize = array_height_2d(other.objectInLightArray);
		
			other.objectInLightArray[arraySize,3] = py2;
			other.objectInLightArray[arraySize,2] = px2;
			other.objectInLightArray[arraySize,1] = py1;
			other.objectInLightArray[arraySize,0] = px2;
		}
		if( !scr_signTest( px2,py2, px1,py2, other.lx,other.ly))
		{
			var arraySize = array_height_2d(other.objectInLightArray);
		
			other.objectInLightArray[arraySize,3] = py2;
			other.objectInLightArray[arraySize,2] = px1;
			other.objectInLightArray[arraySize,1] = py2;
			other.objectInLightArray[arraySize,0] = px2;
		}
		if( !scr_signTest( px1,py2, px1,py1, other.lx,other.ly))
		{
			var arraySize = array_height_2d(other.objectInLightArray);
		
			other.objectInLightArray[arraySize,3] = py1;
			other.objectInLightArray[arraySize,2] = px1;
			other.objectInLightArray[arraySize,1] = py2;
			other.objectInLightArray[arraySize,0] = px1;          
		} 
		
	}
}
