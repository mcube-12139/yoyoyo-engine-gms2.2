var blockSprite = sprBlockMask;
var spikeUpSprite = sprSpikeUp;
var spikeRightSprite = sprSpikeRight;
var spikeDownSprite = sprSpikeDown;
var spikeLeftSprite = sprSpikeLeft;
var autotilePolicy = 0;

switch (room) {
case rSample01:
    blockSprite = sprBlockMask;
    autotilePolicy = 0;
    break;
}

// change sprite
with (all) {
    switch (object_index) {
    case objAutotiledBlock:
    case objAutotiledBlockFake:
    case objAutotiledBlockInvis:
        sprite_index = blockSprite;
        break;
    case objSpikeUp:
        sprite_index = spikeUpSprite;
        break;
    case objSpikeRight:
        sprite_index = spikeRightSprite;
        break;
    case objSpikeDown:
        sprite_index = spikeDownSprite;
        break;
    case objSpikeLeft:
        sprite_index = spikeLeftSprite;
        break;
    }
}

global.autotilePolicy = autotilePolicy;
if (global.autotileLastRoom != room) {
    // update autotiler
    global.autotileLastRoom = room;
    if (autotilePolicy != 0) {
        // add position
        ds_map_clear(global.autotileMap);
        with (all) {
            if (object_index == objAutotiledBlock || object_index == objAutotiledBlockFake) {
                // check scale
                if (debug_mode) {
                    if (frac(image_xscale) != 0 || frac(image_yscale) != 0) {
                        show_error("Block scale is not integer." + chr(10) + "room = " + room_get_name(room) + chr(10) + "x = " + string(x) + chr(10) + "y = " + string(y), true);
                    }
                }
            
                var singleX = x;
                for (var i = 0; i != image_xscale; i++) {
                    var singleY = y;
                    for (var j = 0; j != image_yscale; j++) {
                        scrAutotileAddPos(singleX, singleY);
                        singleY += 32;
                    }
                    singleX += 32;
                }
            }
        }
    }
}
    
// set indices
with (all) {
    switch (object_index) {
    case objAutotiledBlock:
    case objAutotiledBlockFake:
        var singleX = x;
        for (var i = 0; i != image_xscale; i++) {
            indices[i] = [];
            var lines = indices[i];
            var singleY = y;
            for (var j = 0; j != image_yscale; j++) {
                lines[@ j] = scrAutotileGetIndex(singleX, singleY);
                singleY += 32;
            }
            singleX += 32;
        }
        break;
    case objAutotiledBlockInvis:
        image_index = image_number - 1;
        break;
    }
}
