/// @description Draw menu

draw_set_color(c_black);
draw_set_font(global.texts[? "extraLargeFont"]);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Draw menu option text
for (var i = 0; i < optionNum; i++) {
    draw_text(xSelector,ySelector+(ySeperation*i),strSelect[i]);
}

draw_set_halign(fa_right);

// Draw current option settings

if (global.muteMusic) {
    draw_text(xSelector+xSeperation,ySelector,global.texts[? "off"]);
} else {
    draw_text(xSelector+xSeperation,ySelector,global.texts[? "on"]);
}

draw_text(xSelector+xSeperation,ySelector+ySeperation,string(global.volumeLevel)+"%");
    
if (global.fullscreenMode) {
    draw_text(xSelector+xSeperation,ySelector+(ySeperation*2),global.texts[? "fullscreen"]);
} else {
    draw_text(xSelector+xSeperation,ySelector+(ySeperation*2),global.texts[? "windowed"]);
}

if (global.smoothingMode) {
    draw_text(xSelector+xSeperation,ySelector+(ySeperation*3),global.texts[? "on"]);
} else {
    draw_text(xSelector+xSeperation,ySelector+(ySeperation*3),global.texts[? "off"]);
}

// Draw menu sprite
draw_sprite(sprPlayerIdle,playerIndex,xSelector-16,ySelector+(ySeperation*optionSelect)+19);

scrDrawButtonInfo(false); // Draw menu button text