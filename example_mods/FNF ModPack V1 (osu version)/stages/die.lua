function onCreate()
	-- background shit

	makeLuaSprite('die', 'die', 0, 0);
	setScrollFactor('die', 0.0, 0.0);
	scaleObject('die',0.335, 0.335);

	addLuaSprite('die', false);
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end