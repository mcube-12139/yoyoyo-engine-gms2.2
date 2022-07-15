/// @description Initialize variables

buttonSelect = 0; // Sets which button is currently selected

xSelector = 120; // Sets where to draw the menu text on the x axis
ySelector = 29; // Sets where to draw the menu text on the y axis
xSeperation = 560; // Sets how far to separate the button name from the button value
ySeperation = 40; // Sets how far each option is from each other

settingButton = false; // Sets whether or not a button is currently getting set
resetPrompt = false; // Sets whether to show the message that controls were reset

strSelect[0] = global.texts[? "controllerIndex"];
strSelect[1] = global.texts[? "leftButton"];
strSelect[2] = global.texts[? "rightButton"];
strSelect[3] = global.texts[? "upButton"];
strSelect[4] = global.texts[? "downButton"];
strSelect[5] = global.texts[? "jumpButton"];
strSelect[6] = global.texts[? "shootButton"];
strSelect[7] = global.texts[? "restartButton"];
strSelect[8] = global.texts[? "skipButton"];
strSelect[9] = global.texts[? "suicideButton"];
strSelect[10] = global.texts[? "pauseButton"];
strSelect[11] = global.texts[? "resetControls"];

// Get current control strings
strButton[0] = string(global.controllerIndex);
strButton[1] = scrGetControllerStr(global.leftButton[1]);
strButton[2] = scrGetControllerStr(global.rightButton[1]);
strButton[3] = scrGetControllerStr(global.upButton[1]);
strButton[4] = scrGetControllerStr(global.downButton[1]);
strButton[5] = scrGetControllerStr(global.jumpButton[1]);
strButton[6] = scrGetControllerStr(global.shootButton[1]);
strButton[7] = scrGetControllerStr(global.restartButton[1]);
strButton[8] = scrGetControllerStr(global.skipButton[1]);
strButton[9] = scrGetControllerStr(global.suicideButton[1]);
strButton[10] = scrGetControllerStr(global.pauseButton[1]);
strButton[11] = "";

if (global.controllerIndex == -1) {
	strButton[0] = global.texts[? "disabled"];
}

// Stores the image index of the menu sprite
playerIndex = 0;