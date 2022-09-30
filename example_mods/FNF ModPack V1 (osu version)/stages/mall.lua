function onCreate()
	-- background shit

	makeLuaSprite('mall', 'week5', -355, -475);
	setScrollFactor('mall', 0.0, 0.0);
	scaleObject('mall',0.9,0.9);

	addLuaSprite('mall', false);
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end