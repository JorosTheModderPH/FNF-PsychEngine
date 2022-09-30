function onCreate()
	-- background shit

	makeLuaSprite('ballisticalley', 'backgroundballistic', -100, -50);
	setScrollFactor('ballisticalley', 0, 0);
	scaleObject('ballisticalley',1, 1);

	addLuaSprite('ballisticalley', false);
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end