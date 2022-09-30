function onCreate()
	-- background shit

	makeLuaSprite('daybg1', 'day/BG1', -250, -85.55);
	setScrollFactor('daybg1', 0.0, 0.0);
	scaleObject('daybg1',1, 1);
	
	makeLuaSprite('daybg2', 'day/BG2', -227, -53);
	setScrollFactor('daybg2', 0, 0);
	scaleObject('daybg2', 0.8, 0.8);
	
	makeLuaSprite('daybg3', 'day/BG3', -394, -167.50);
	setScrollFactor('daybg3', 0, 0);
	scaleObject('daybg3', 0.9, 0.9);

	addLuaSprite('daybg1', false);
	addLuaSprite('daybg2', false);
	addLuaSprite('daybg3', false);	
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end