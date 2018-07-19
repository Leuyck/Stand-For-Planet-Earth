/// Create the grid
DEBUG = false;
cell_size = 32;
cell_width = cell_size;
cell_height = cell_size;

tempCell = array_create(0,0);
owner = noone;
init = false;

var numberOfCells = cell_size / 2;
grid = mp_grid_create(0, 0, room_width / numberOfCells, room_height / numberOfCells, cell_width, cell_height);
mp_grid_add_instances(grid, obj_mur_parent, false);
mp_grid_add_instances(grid, obj_mobilier_parent, false);

// Si les NPCs se trouvent sur une chaise ou un élement de mobilier
// ils se trouvent à l'intérieur d'une case non accessible (rouge).
// Aucun path ne peut être calculé.
// Ce code permet de libérer les cases autour d'un npc afin qu'il puisse
// créer correctement un path vers un point.
with(obj_localNpc) {
	if(place_meeting(x, y, obj_mobilier_parent)) {
		mp_grid_clear_rectangle(
			other.grid,
			self.x - self.sprite_width  / 4,
			self.y - self.sprite_height / 4,
			self.x + self.sprite_width  / 4,
			self.y + self.sprite_height / 4
		);
	}
}