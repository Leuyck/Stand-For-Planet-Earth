keyboard_clear(vk_enter);
with(obj_textbox_parent){
	if(self.selected){
		self.valueToChange = self.txt;	
		self.selected = false;
		with(obj_textbox_parent){
			if(self.txt ==""){
				self.selected=true;	
				keyboard_string = self.txt;
			}
		}
	}
}