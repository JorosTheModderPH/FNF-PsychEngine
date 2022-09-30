function onCreate()
	-- background shit

	makeLuaSprite('hellclown', 'hellclown', -145, -55.50);
	setScrollFactor('hellclown', 0.0, 0.0);
	scaleObject('hellclown',0.9, 0.9);

	addLuaSprite('hellclown', false);
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end