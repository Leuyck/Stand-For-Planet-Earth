///scr_createAndSortArrayFromArrayWithDistance();
var array = argument[0];

var sortedList = ds_list_create();
var instanceDistance = array_create(0,0);
var sortedArray = array_create(0,0)

for(var i = 0; i<array_height_2d(array); i++){
	if(instance_exists(array[i,0]) && array[i,1]!=noone){
		var instanceId =array[i,0];
		var distance = point_distance(x, y, instanceId.x, instanceId.y);
		instanceDistance[i,0]=instanceId;//utilise la meme position que array pour pouvoir utiliser le meme index pour peupler sortedArray
		instanceDistance[i,1]=distance;
		ds_list_add(sortedList,distance);
	}
}
ds_list_sort(sortedList,true);

for(var i = 0; i<ds_list_size(sortedList); i++){
	var distance = ds_list_find_value(sortedList,i);
	for (var j = 0; j < array_height_2d(instanceDistance); ++j) {
	    if(instanceDistance[j,1] == distance){
			for(var k = 0;k<=6;++k){
				sortedArray[i,k] = array[j,k];
			}
		}
	}
}
ds_list_destroy(sortedList);
return sortedArray;