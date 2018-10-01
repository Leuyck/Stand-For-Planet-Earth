///scr_createAndSortListWithDistance(list)
var list = argument[0];
var sortList = argument[1]

if(sortList == true){
	var sortedList = ds_list_create();
	var instanceDistance = array_create(0,0);

	for(var i = 0; i<ds_list_size(list); ++i){
		var instanceId = ds_list_find_value(list,i);
		if(instance_exists(instanceId)){
			var distance = point_distance(x, y, instanceId.x, instanceId.y);
			var arrayHeight = array_height_2d(instanceDistance);
			instanceDistance[arrayHeight,0]=instanceId;//utilise la meme position que array pour pouvoir utiliser le meme index pour peupler sortedArray
			instanceDistance[arrayHeight,1]=distance;
			ds_list_add(sortedList,distance);
		}
	}
	ds_list_sort(sortedList,true);
	ds_list_clear(list);

	for(var i = 0; i<ds_list_size(sortedList); i++){
		var distance = ds_list_find_value(sortedList,i);
		for (var j = 0; j < array_height_2d(instanceDistance); ++j) {
		    if(instanceDistance[j,1] == distance){
				ds_list_add(list,instanceDistance[j,0]);
			}
		}
	}
	ds_list_destroy(sortedList);
}
return list;