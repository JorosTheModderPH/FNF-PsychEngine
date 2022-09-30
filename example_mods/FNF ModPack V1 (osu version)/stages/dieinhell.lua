function onCreate()
	-- background shit

	makeLuaSprite('dieinhell', 'ex/dieinhell', -365, -415.85);
	setScrollFactor('dieinhell', 0.0, 0.0);
	scaleObject('dieinhell',0.9, 0.9);

	addLuaSprite('dieinhell', false);
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end