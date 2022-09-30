function onCreate()
	-- background shit

	makeLuaSprite('alleybg', 'alleybg', -275.23, -200);
	setScrollFactor('alleybg', 0.0, 0.0);
	scaleObject('alleybg',0.8, 0.8);

	addLuaSprite('alleybg', false);
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end