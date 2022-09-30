function onCreate()
	-- background shit

	makeLuaSprite('sunsuck', 'ex/sunsuck', -453.50, -415.85);
	setScrollFactor('sunsuck', 0.0, 0.0);
	scaleObject('sunsuck',0.85, 0.85);

	addLuaSprite('sunsuck', false);
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end