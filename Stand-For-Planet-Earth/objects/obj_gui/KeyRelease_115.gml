debugPathes = !debugPathes;

with(obj_localNpc)
{
    self.DEBUG_PATH = other.debugPathes;
}
with(obj_PetDrone)
{
    self.DEBUG_PATH = other.debugPathes;
}

