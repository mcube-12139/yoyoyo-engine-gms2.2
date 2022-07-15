var xx = argument0;
var yy = argument1;

if (global.autotilePolicy == 0) {
    return 0;
}

var u = scrAutotileBlockExists(xx, yy - 32);
if (global.autotilePolicy == 1) {
    return !u;
}

var r = scrAutotileBlockExists(xx + 32, yy);
var d = scrAutotileBlockExists(xx, yy + 32);
var l = scrAutotileBlockExists(xx - 32, yy);

var ur = scrAutotileBlockExists(xx + 32, yy - 32);
var dr = scrAutotileBlockExists(xx + 32, yy + 32);
var dl = scrAutotileBlockExists(xx - 32, yy + 32);
var ul = scrAutotileBlockExists(xx - 32, yy - 32);

var index = global.autotile47Indices[(u << 7) | (ur << 6) | (r << 5) | (dr << 4) | (d << 3) | (dl << 2) | (l << 1) | ul];
if (global.autotilePolicy == 3) {
    return global.autotile4Indices[index];
}

return index;
