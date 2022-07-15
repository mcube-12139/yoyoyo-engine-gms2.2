var xx = argument0;
var yy = argument1;

var pos = string(xx) + " " + string(yy);
if (ds_map_exists(global.autotileMap, pos)) {
    return true;
}

if (xx <= -32 || xx >= room_width || yy <= -32 || yy >= room_height) {
    return true;
}

return false;
