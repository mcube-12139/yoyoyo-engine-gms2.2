/// @description Initialize variables

optionNum = 6; // Sets number of separate menu options available
optionSelect = global.menuSelectPrev[1]; // Sets which option is currently selected

xSelector = 124; // Sets where to draw the menu text on the x axis
ySelector = 171; // Sets where to draw the menu text on the y axis
xSeperation = 550; // Sets how far to separate the option name from the option value
ySeperation = 48; // Sets how far each options is from each other

if (!CONTROLLER_ENABLED) { // Remove controller settings menu if controllers are disabled
    optionNum -= 1;
    ySelector += 24;
}

strSelect[0] = global.texts[? "music"];
strSelect[1] = global.texts[? "volumeLevel"];
strSelect[2] = global.texts[? "screenMode"];
strSelect[3] = global.texts[? "smoothingMode"];
strSelect[4] = global.texts[? "setKeyboardControls"];
strSelect[5] = global.texts[? "controllerOptions"];

// Stores the image index of the menu sprite
playerIndex = 0;