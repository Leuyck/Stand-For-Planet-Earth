/// @description 
var allDeployed = true;
with(obj_localPlayer){
	if(self.deployed ==false) {
		allDeployed = false;
		exit;
	}
}
if(allDeployed == true) then textVisible = true;