function onCreate()
	-- background shit

	makeLuaSprite('favelanoite', 'favelanoite', -310, -210);
	setScrollFactor('favelanoite', 0, 0);
	scaleObject('favelanoite',0.965, 0.965);

	addLuaSprite('favelanoite', false);
end

function onCreatePost()

	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
	setProperty('dad.visible',false)
end