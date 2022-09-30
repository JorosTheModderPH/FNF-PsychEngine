function onCreate()
	-- background shit

	makeLuaSprite('school', 'week6', -100, -35);
	setScrollFactor('school', 0.0, 0.0);
	scaleObject('school',5.5, 5.5);

	addLuaSprite('school', false);
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end