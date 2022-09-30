function onCreate()
	-- background shit

	makeLuaSprite('spooky', 'week2', -200, -100);
	setScrollFactor('spooky', 0.0, 0.0);
	scaleObject('spooky',0.85, 0.85);

	addLuaSprite('spooky', false);
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end