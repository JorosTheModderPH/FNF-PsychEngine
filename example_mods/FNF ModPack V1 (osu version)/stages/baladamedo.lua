function onCreate()
	-- background shit

	makeLuaSprite('baladamedo', 'baladamedo', -300, -100);
	setScrollFactor('baladamedo', 0, 0);
	scaleObject('baladamedo',0.9, 0.9);

	addLuaSprite('baladamedo', false);
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end