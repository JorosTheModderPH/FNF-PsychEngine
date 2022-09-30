function onCreate()
	-- background shit
	makeLuaSprite('background', 'ITB', -350.50, -167.50);
	setScrollFactor('background', 0, 0);
	scaleObject('background', 0.9, 0.9);
	addLuaSprite('background', false); 
	end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end