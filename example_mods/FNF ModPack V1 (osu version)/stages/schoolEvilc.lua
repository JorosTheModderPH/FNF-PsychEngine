function onCreate()
	-- background shit

	makeLuaSprite('schoolEvil', 'week6_evil' , -790, -1267);
	setScrollFactor('schoolEvil', 0.0, 0.0);
	scaleObject('schoolEvil',6, 6);

	addLuaSprite('schoolEvil', false);
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end