function onCreate()
	-- background shit

	makeLuaSprite('favela', 'favela', -240, -127);
	setScrollFactor('favela', 0, 0);
	scaleObject('favela',0.95, 0.95);

	addLuaSprite('favela', false);
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end