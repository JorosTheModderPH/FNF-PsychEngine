function onCreate()
	-- background shit

	makeLuaSprite('alleyway', 'alleyway', -70, -100);
	setScrollFactor('alleyway', 0.0, 0.0);
	scaleObject('alleyway',0.9, 0.9);

	addLuaSprite('alleyway', false);
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end