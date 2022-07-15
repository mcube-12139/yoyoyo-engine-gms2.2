var pos = string(argument0) + " " + string(argument1);
if (!ds_map_exists(global.autotileMap, pos)) {
    global.autotileMap[? pos] = id;
}