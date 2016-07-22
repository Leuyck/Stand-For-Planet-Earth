//npcIdCounter = 0
var npcNumber = argument[0];
if (instance_exists(obj_npc))
{
    with obj_npc  
    {
        instance_destroy();
    }   
}
if (instance_number(obj_npc) <=npcNumber)
{
    randomize();
    var npc = instance_create(x, y, obj_localNpc1);
    npc.xx = 200;
    npc.yy = 200;
    npc.npcId = obj_server.npcIdCounter;
    npc.npcType = 0//irandom(1);
    npc.dir = 290; 
    npc.spd = 1
    obj_server.npcIdCounter++
    
    randomize();
    var npc = instance_create(x, y, obj_localNpc1);
    npc.xx = 500;
    npc.yy = 200;
    npc.npcId = obj_server.npcIdCounter;
    npc.npcType = 0//irandom(1);
    npc.dir = 340;
    npc.spd = 1
    obj_server.npcIdCounter++
}

