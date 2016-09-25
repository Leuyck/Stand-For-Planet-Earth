var text = argument[0];

with (obj_message)
{
    instance_destroy();
}

var notification = instance_create (x, y, obj_message);
notification.message = text;
