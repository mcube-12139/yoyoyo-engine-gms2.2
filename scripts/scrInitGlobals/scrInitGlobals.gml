/// @description scrInitGlobals()
/// Initializes all global variables needed for the game

scrInitTexts(); // Initialize texts
scrInitEngineOptions(); // Initialize engine options

// Initialize basic game variables

global.saveNum = 1;
global.difficulty = 0; // 0 = medium, 1 = hard, 2 = very hard, 3 = impossible
global.deaths = 0;
global.time = 0;
global.timeMicro = 0;
global.saveRoom = "";
global.savePlayerX = 0;
global.savePlayerY = 0;
global.grav = 1;
global.saveGrav = 1;

global.secretItem = array_create(SECRET_ITEM_TOTAL,false);
global.saveSecretItem = array_create(SECRET_ITEM_TOTAL,false);

global.bossItem = array_create(BOSS_ITEM_TOTAL,false);
global.saveBossItem = array_create(BOSS_ITEM_TOTAL,false);

global.gameClear = false;
global.saveGameClear = false;

global.trigger = array_create(50,false);

global.gameStarted = false; // Determines whether the game is currently in progress (enables saving, restarting, etc.)
global.noPause = false; // Sets whether or not to allow pausing (useful for bosses to prevent desync)
global.autosave = false; // Keeps track of whether or not to autosave the game the next time the player is created
global.noDeath = false; // Keeps track of whether to give the player god mode
global.infJump = false; // Keeps track of whether to give the player infinite jump

global.gamePaused = false; // Keeps track of whether the game is paused or not
global.pauseSpr = -1; // Copies the application surface when the game is paused
global.pauseDelay = 0; // Sets a pause delay so that the player can't quickly pause/unpause to prevent pause buffer strats

global.currentMusicID = -1; // Keeps track of what song the current main music is
global.currentMusic = -1; // Keeps track of the current main music instance
global.deathSound = -1; // Keeps track of the death sound when the player dies
global.gameOverMusic = -1; // Keeps track of the game over music instance
global.musicFading = false; // Keeps track of whether the main music is currently fading out
global.currentGain = 0; // Keeps track of the current main music gain before a song is faded out

global.menuSelectPrev[0] = 0; // Keeps track of the previously selected option when navigating away from the difficulty menu
global.menuSelectPrev[1] = 0; // Keeps track of the previously selected option when navigating away from the options menu

display_set_gui_size(surface_get_width(application_surface),surface_get_height(application_surface)); // Set the correct GUI size for the Draw GUI event

global.controllerMode = false; // Keeps track of whether to use keyboard or controller for inputs
global.controllerDelay = -1; // Handles delay for switching between keyboard/controller so that the player can't use both at the same time

global.autotileMap = ds_map_create();
global.autotileLastRoom = -1; // Last autotiled room
global.autotilePolicy = 0; // 0 = None, 1 = 2 kinds, 2 = 4 kinds, 3 = 47 kinds
global.autotile4Indices = [0,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,3,3,3,1,3,3,3,2,3,3,3,1,3,3,3,2,1,3,3,3,3,3,3,3,3,3,3,3,3,3];
global.autotile47Indices = [46,46,45,45,46,46,45,45,42,42,37,37,42,42,36,36,46,46,45,45,46,46,45,45,42,42,37,37,42,42,36,36,43,43,33,33,43,43,33,33,35,35,23,23,35,35,21,21,43,43,33,33,43,43,33,33,34,34,22,22,34,34,20,20,46,46,45,45,46,46,45,45,42,42,37,37,42,42,36,36,46,46,45,45,46,46,45,45,42,42,37,37,42,42,36,36,43,43,33,33,43,43,33,33,35,35,23,23,35,35,21,21,43,43,33,33,43,43,33,33,34,34,22,22,34,34,20,20,44,44,39,38,44,44,39,38,32,32,27,25,32,32,26,24,44,44,39,38,44,44,39,38,32,32,27,25,32,32,26,24,41,41,31,30,41,41,31,30,19,19,15,14,19,19,7,6,41,41,31,30,41,41,31,30,17,17,11,10,17,17,3,2,44,44,39,38,44,44,39,38,32,32,27,25,32,32,26,24,44,44,39,38,44,44,39,38,32,32,27,25,32,32,26,24,40,40,29,28,40,40,29,28,18,18,13,12,18,18,5,4,40,40,29,28,40,40,29,28,16,16,9,8,16,16,1,0];

randomize(); // Make sure the game starts with a random seed for RNG