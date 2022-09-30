function onCreate()
	-- background shit

	makeLuaSprite('faveladia', 'faveladia', -355, -190);
	setScrollFactor('faveladia', 0, 0);
	scaleObject('faveladia',0.9, 0.9);

	addLuaSprite('faveladia', false);
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end