///initialize

buttonId = -1;
image_index = 0;
image_speed = 0;

// previous let us to know when value changed from old to new.
previousImageIndex = -1;
previousButtonId = -1;

// Heros should be in the same order that image in sprite.
availableCharacters = ds_list_create();
ds_list_add(availableCharacters, "PetBot");
ds_list_add(availableCharacters, "BatBot");

