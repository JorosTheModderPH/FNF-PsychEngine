function onCreate()
	-- background shit

	makeLuaSprite('baladamedovirus', 'thisOneIswear', -300, -100);
	setScrollFactor('baladamedovirus', 0, 0);
	scaleObject('baladamedovirus',0.9, 0.9);

	addLuaSprite('baladamedovirus', false);
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end