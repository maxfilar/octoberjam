function struct_copy(_struct) {
    var _copy = {}
    var _keys = variable_struct_get_names(_struct)
    
    for (var i = 0; i < array_length(_keys); i++) {
        var key = _keys[i]
        variable_struct_set(_copy, key, variable_struct_get(_struct, key))
    }

    return _copy
}