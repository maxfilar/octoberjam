function sc_save(){	
	var _struct = 
	{
		lvl_record: global.max_lvl,
		h: global.time.hours,
		m: global.time.minutes,
		s: global.time.seconds,
		_guns: [],
	}
	for (var i = 0; i < array_length(global.guns); i++) {
		array_push(_struct._guns,global.guns[i])
	}
	
	var _string = json_stringify(_struct)
	
	var _file = file_text_open_write("save.txt")
	
	file_text_write_string(_file, _string)
	
	file_text_close(_file)
}

function sc_load(){
	if file_exists("save.txt")
	{
		var _file = file_text_open_read("save.txt")
		
		var _json = file_text_read_string(_file)
		
		var _struct = json_parse(_json)
		
		// main
		global.max_lvl = _struct.lvl_record
		global.time.hours = _struct.h
		global.time.minutes = _struct.m
		global.time.seconds = _struct.s
		for (var i = 0; i < array_length(global.guns); i++) {
			global.guns[i] = _struct._guns[i]
		}
		
		file_text_close(_file)
	}
}