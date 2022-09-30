function onCreate()
	-- background shit

	makeLuaSprite('ITB-Hell', 'ex/ITB-Hell', -337, -153.50);
	setScrollFactor('ITB-Hell', 0.0, 0.0);
	scaleObject('ITB-Hell',0.8, 0.8);

	addLuaSprite('ITB-Hell', false);
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end