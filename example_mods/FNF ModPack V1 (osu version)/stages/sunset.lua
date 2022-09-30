function onCreate()
	-- background shit

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	makeLuaSprite('daybg1', 'sunset/BG1_sunset', -250, -85.55);
	setScrollFactor('daybg1', 0.0, 0.0);
	scaleObject('daybg1',1, 1);
	
	makeLuaSprite('daybg2', 'sunset/BG2_sunset', -227, -53);
	setScrollFactor('daybg2', 0, 0);
	scaleObject('daybg2', 0.8, 0.8);
	
	makeLuaSprite('daybg3', 'sunset/BG3_sunset', -394, -167.50);
	setScrollFactor('daybg3', 0, 0);
	scaleObject('daybg3', 0.9, 0.9);
	end

	addLuaSprite('daybg1', false);
	addLuaSprite('daybg2', false);
	addLuaSprite('daybg3', false);
	
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end