function onCreate()
	-- background shit

	makeLuaSprite('ITB-Glitch', 'ex/ITB-Glitch', -337, -153.50);
	setScrollFactor('ITB-Glitch', 0.0, 0.0);
	scaleObject('ITB-Glitch',0.8, 0.8);

	addLuaSprite('ITB-Glitch', false);
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end