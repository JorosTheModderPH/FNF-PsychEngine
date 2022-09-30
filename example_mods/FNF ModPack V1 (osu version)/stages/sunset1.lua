function onCreate()
	-- background shit

	makeLuaSprite('limo', 'week4', -550, -225);
	setScrollFactor('limo', 0.0, 0.0);
	scaleObject('limo',0.9, 0.9);

	addLuaSprite('limo', false);
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end