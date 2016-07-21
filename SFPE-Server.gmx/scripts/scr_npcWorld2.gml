//npcIdCounter = 0

randomize();
var npc = instance_create(x, y, obj_npc);
npc.xx = 200;
npc.yy = 200;
npc.npcId = npcIdCounter;
npc.npcType = irandom(2);
npc.dir = 290;
npc.spd = 5
obj_server.npcIdCounter++

randomize();
var npc = instance_create(x, y, obj_npc);
npc.xx = 500;
npc.yy = 200;
npc.npcId = npcIdCounter;
npc.npcType = irandom(2);
npc.dir = 340;
npc.spd = 5
obj_server.npcIdCounter++
