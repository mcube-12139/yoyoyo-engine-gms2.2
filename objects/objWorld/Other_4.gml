/// @description Play current room music and put into the correct layer

scrGetMusic(); // Find and play the proper music for the current room
scrInitRoom(); // Initialize room

layer = layer_get_id("World"); // Put into the correct layer