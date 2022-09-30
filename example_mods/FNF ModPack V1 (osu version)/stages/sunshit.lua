function onCreate()
	-- background shit

	makeLuaSprite('sunshit', 'sunshit', -97.50, -13.50);
	setScrollFactor('sunshit', 0.0, 0.0);
	scaleObject('sunshit',0.375, 0.375);

	addLuaSprite('sunshit', false);
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end