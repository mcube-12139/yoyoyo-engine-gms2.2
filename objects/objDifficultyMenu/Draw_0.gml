/// @description Draw menu and save file info

for(var i = 0; i < 3; i += 1) {
    draw_set_color(c_black);
    draw_set_halign(fa_left);
	draw_set_valign(fa_top);
    draw_set_font(global.texts[? "extraLargeFont"]);
    
    draw_text(xSelector+(i*xSeperation)+2,ySelector,str[i]);
    
    draw_set_font(global.texts[? "smallFont"]);
    
    draw_text(xSelector+(i*xSeperation)+10,ySelector+70,global.texts[? "deaths"]+": "+string(deaths[i]));
    draw_text(xSelector+(i*xSeperation)+10,ySelector+90,global.texts[? "time"]+": "+timeStr[i]);
    
    draw_set_halign(fa_center);
    
    if (difSelectMode && i == fileSelect) { // Draw difficulty select text
        if (!warnText) {
			var difSelectText;
			
            if (difSelect == -1) {
				difSelectText = "< "+global.texts[? "loadGame"]+" >";
            } else if (difSelect == 0) {
				difSelectText = "< "+global.texts[? "medium"]+" >";
            } else if (difSelect == 1) {
				difSelectText = "< "+global.texts[? "hard"]+" >";
            } else if (difSelect == 2) {
				difSelectText = "< "+global.texts[? "veryHard"]+" >";
            } else {
				difSelectText = "< "+global.texts[? "impossible"]+" >";
			}
			
			draw_text(xSelector+(i*xSeperation)+65,ySelector+49,difSelectText);
        } else {
            draw_text(xSelector+(i*xSeperation)+63,ySelector-100,global.texts[? "overwriteWarning"]);
			
			var warnSelectText;
			
            if (warnSelect) {
				warnSelectText = "< "+global.texts[? "yes"]+" >";
            } else {
				warnSelectText = "< "+global.texts[? "no"]+" >";
			}
			
			draw_text(xSelector+(i*xSeperation)+65,ySelector+49,warnSelectText);
        }
    }
    
    if (exists[i]) { // Draw save file info
        if ((!difSelectMode) || (difSelectMode && i != fileSelect)) {
			var difficultyText;
			
            if (difficulty[i] == 0) {
				difficultyText = global.texts[? "medium"];
            } else if (difficulty[i] == 1) { 
				difficultyText = global.texts[? "hard"];
            } else if (difficulty[i] == 2) { 
				difficultyText = global.texts[? "veryHard"];
            } else {
				difficultyText = global.texts[? "impossible"];
			}
			
			draw_text(xSelector+(i*xSeperation)+65,ySelector+49,difficultyText);
        }
        
        draw_set_font(global.texts[? "largeFont"]);
        
        if (clear[i]) { 
			draw_text(xSelector+(i*xSeperation)+63,ySelector+215,global.texts[? "clear"]+"!!");
		}
		
		var bossArray = boss[i];
        
        if (bossArray[0]) {
			draw_sprite(sprBossItem,-1,xSelector+(i*xSeperation),ySelector+128);
		}
        if (bossArray[1]) {
			draw_sprite(sprBossItem,-1,xSelector+(i*xSeperation)+32,ySelector+128);
		}
        if (bossArray[2]) {
			draw_sprite(sprBossItem,-1,xSelector+(i*xSeperation)+64,ySelector+128);
		}
        if (bossArray[3]) {
			draw_sprite(sprBossItem,-1,xSelector+(i*xSeperation)+96,ySelector+128);
		}
        if (bossArray[4]) {
			draw_sprite(sprBossItem,-1,xSelector+(i*xSeperation),ySelector+160);
		}
        if (bossArray[5]) {
			draw_sprite(sprBossItem,-1,xSelector+(i*xSeperation)+32,ySelector+160);
		}
        if (bossArray[6]) {
			draw_sprite(sprBossItem,-1,xSelector+(i*xSeperation)+64,ySelector+160);
		}
        if (bossArray[7]) {
			draw_sprite(sprBossItem,-1,xSelector+(i*xSeperation)+96,ySelector+160);
		}
    } else {
        if ((!difSelectMode) || (difSelectMode && i != fileSelect)) {
            draw_text(xSelector+(i*xSeperation)+65,ySelector+49,global.texts[? "noData"]);
        }
    }
    
    if (i == fileSelect) {
        draw_sprite(sprCherry,appleIndex,xSelector+(i*xSeperation)+5,ySelector+310);
        draw_sprite(sprCherry,appleIndex,xSelector+(i*xSeperation)+25,ySelector+310);
        draw_sprite(sprCherry,appleIndex,xSelector+(i*xSeperation)+45,ySelector+310);
        draw_sprite(sprPlayerIdle,playerIndex,xSelector+(i*xSeperation)+65,ySelector+310);
        draw_sprite(sprCherry,appleIndex,xSelector+(i*xSeperation)+85,ySelector+310);
        draw_sprite(sprCherry,appleIndex,xSelector+(i*xSeperation)+105,ySelector+310);
        draw_sprite(sprCherry,appleIndex,xSelector+(i*xSeperation)+125,ySelector+310);
    }
}

scrDrawButtonInfo(true); // Draw menu button text