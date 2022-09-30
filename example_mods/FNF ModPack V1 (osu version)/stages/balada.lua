function onCreate()
	-- background shit

	makeLuaSprite('balada', 'balada', -335, -412);
	setScrollFactor('balada', 0, 0);
	scaleObject('balada',0.69, 0.69);

	addLuaSprite('balada', false);
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end