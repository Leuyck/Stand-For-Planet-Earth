if(currentHealth <= 0) {
	return "dead";	
}
else if(self.spd !=0 ) {
	return "walking";
}
else {
	return "waiting";
}