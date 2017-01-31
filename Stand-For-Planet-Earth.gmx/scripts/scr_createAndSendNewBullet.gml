///scr_createAndSendNewBullet (character, obj_bullet, owner)

var character = argument[0];
var bulletType = argument[1];
var owner = argument[2];

var bullet_id = instance_create (character.x + lengthdir_x(193.00, character.direction + 0.30), character.y + lengthdir_y (193.00, character.direction + 0.30), bulletType);
bullet_id.direction = character.direction + random_range(-character.precision, character.precision);
bullet_id.image_angle = bullet_id.direction;
bullet_id.owner = owner;

if (instance_exists(obj_client))
{
    buffer_seek (global.bufferNetwork, buffer_seek_start, 0);
    buffer_write(global.bufferNetwork, buffer_u8, S_BROADCAST_BULLET_CREATION_MESSAGE);
    buffer_write(global.bufferNetwork, buffer_u32, global.playerId);
    buffer_write(global.bufferNetwork, buffer_string, object_get_name(bulletType));
    buffer_write(global.bufferNetwork, buffer_f32, bullet_id.direction);
    buffer_write(global.bufferNetwork, buffer_f32, bullet_id.x);
    buffer_write(global.bufferNetwork, buffer_f32, bullet_id.y);
    buffer_write(global.bufferNetwork, buffer_string, owner);
    network_send_packet (obj_client.socket, global.bufferNetwork, buffer_tell(global.bufferNetwork));
}
