function onCreate()
	-- background shit

	makeLuaSprite('tricky', 'tricky', -650, -235);
	setScrollFactor('tricky', 0.0, 0.0);
	scaleObject('tricky',0.9, 0.9);

	addLuaSprite('tricky', false);
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end