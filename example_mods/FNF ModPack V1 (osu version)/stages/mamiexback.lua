function onCreate()
	-- background shit
	makeLuaSprite('mamiexBG', 'mamiexBG', -335, -230);
	setScrollFactor('mamiexBG', 0, 0);

	makeLuaSprite('HOLYfloor', 'HOLYfloor', -650, 600);
	scaleObject('HOLYfloor', 0,9, 0.9);
	setScrollFactor('HOLYfloor', 0, 0);

	addLuaSprite('mamiexBG', false);
	addLuaSprite('HOLYfloor', false);
	
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end