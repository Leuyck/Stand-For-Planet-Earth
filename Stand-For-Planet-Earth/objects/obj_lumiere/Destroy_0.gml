/// @description Insert description here
// You can write your code in this editor
surface_free(surf);
ds_list_destroy(staticObjectMakingSmallShadowList);
ds_list_destroy(staticObjectMakingInfinitShadowList);
ds_list_destroy(movingObjectMakingShadowList);
ds_list_destroy(staticObjectMakingMovingShadowList);
ds_list_destroy(staticInstanceMakingMovingShadowList);
ds_list_destroy(staticInstanceDetectedList);
ds_map_destroy(staticInstanceDetected);