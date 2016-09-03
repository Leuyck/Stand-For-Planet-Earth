var playerCharacter = argument[0];
var map = argument[1];

var position = instance_create(obj_position, 0, 0);

switch(map)
{
    case rm_world1:
        position.xValue = 2150;
        position.yValue = 7200;
        break;
        
    default:
        position.xValue = 100;
        position.yValue = 100;
}

return position;
