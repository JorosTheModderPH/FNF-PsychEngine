function onCreate()
	-- background shit

	makeLuaSprite('philly','week3', -90, -135);
	setScrollFactor('philly', 0.0, 0.0);
	scaleObject('philly',0.85, 0.85);

	addLuaSprite('philly', false);
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end