//get_random_building_pair()
//	returns a pair of distinct random buildings in the scene.

var numBuildings = instance_number(obj_building);
if (numBuildings < 2) {
	return;
}
var startBuildingIndex = irandom(numBuildings - 1);
var destinationBuildingIndex = irandom(numBuildings - 2);
if (destinationBuildingIndex >= startBuildingIndex) {
	destinationBuildingIndex++;
}
return [instance_find(obj_building, startBuildingIndex), instance_find(obj_building, destinationBuildingIndex)];