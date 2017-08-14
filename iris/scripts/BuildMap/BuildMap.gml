/// BuildChoice Array Element

var arr;
map = ds_map_create();
for (var i = 0; i < argument_count; i += 2)
	{
	ds_map_add(map,argument[i],argument[i+1]);
	}

return map;