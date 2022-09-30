function onCreate()
	-- background shit

	makeLuaSprite('mini', 'ex/mini', -150, -125);
	setScrollFactor('mini', 0.0, 0.0);
	scaleObject('mini',0.75, 0.75);

	addLuaSprite('mini', false);
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end