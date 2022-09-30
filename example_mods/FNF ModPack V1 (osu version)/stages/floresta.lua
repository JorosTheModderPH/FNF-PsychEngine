function onCreate()
	-- background shit

	makeLuaSprite('floresta', 'floresta', -490, -320);
	setScrollFactor('floresta', 0, 0);
	scaleObject('floresta',1.25, 1.25);

	addLuaSprite('floresta', false);
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end