function onCreate()
	-- background shit
	makeLuaSprite('BGbutreesegaveup', 'BGbutreesegaveup', -670, -230);
	setLuaSpriteScrollFactor('BGbutreesegaveup', 0.9, 0.9);
	setScrollFactor('BGbutreesegaveup', 0, 0);

	makeLuaSprite('BGFloor', 'BGFloor', -650, 600);
	setLuaSpriteScrollFactor('BGFloor', 0.9, 0.9);
	scaleObject('BGFloor', 0,9, 0.9);
	setScrollFactor('BGFloor', 0, 0);
	
	addLuaSprite('BGbutreesegaveup', false);
	addLuaSprite('BGFloor', false);
	
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end