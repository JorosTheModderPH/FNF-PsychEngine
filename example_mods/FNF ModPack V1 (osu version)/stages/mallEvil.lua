function onCreate()
	-- background shit

	makeLuaSprite('mallEvil', 'week5_evil', -183.50, -475);
	setScrollFactor('mallEvil', 0.0, 0.0);
	scaleObject('mallEvil',0.9, 0.9);

	addLuaSprite('mallEvil', false);
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end