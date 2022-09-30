function onCreate()
	-- background shit

	makeLuaSprite('smp', 'ex/smp', -337, -153.50);
	setScrollFactor('smp', 0.0, 0.0);
	scaleObject('smp',0.8, 0.8);

	addLuaSprite('smp', false);
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end