function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'stageback', -600, -300);
	setScrollFactor('stageback', 0.0, 0.0);
	
	makeLuaSprite('stagefront', 'stagefront', -650, 600);
	setScrollFactor('stagefront', 0.0, 0.0);
	scaleObject('stagefront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		setScrollFactor('stagelight_left', 0.0, 0.0);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'stage_light', 1225, -100);
		setScrollFactor('stagelight_right', 0.0, 0.0);
		scaleObject('stagelight_right', 1.1, 1.1);
		setProperty('stagelight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtains', 'stagecurtains', -500, -300);
		setScrollFactor('stagecurtains', 1.3, 1.3);
		scaleObject('stagecurtains', 0.0, 0.0);
	end

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);
	addLuaSprite('key', false);
	
	if getPropertyFromClass('ClientPrefs', 'downscroll') then
        setPropertyFromGroup('playerStrums', 0, 'x', 415) --+113
    setPropertyFromGroup('playerStrums', 1, 'x', 528)
    setPropertyFromGroup('playerStrums', 2, 'x', 638)
    setPropertyFromGroup('playerStrums', 3, 'x', 748)
    
    setPropertyFromGroup('playerStrums', 0, 'y', 608)
        setPropertyFromGroup('playerStrums', 1, 'y', 608)
            setPropertyFromGroup('playerStrums', 2, 'y', 608)
                setPropertyFromGroup('playerStrums', 3, 'y', 608)
                
                noteTweenAlpha('first', 0, 0, 0.000001, 'linear');
                noteTweenAlpha('second', 1, 0, 0.00001, 'linear');
                noteTweenAlpha('third', 2, 0, 0.00001, 'linear');
           noteTweenAlpha('fourth', 3, 0, 0.00001, 'linear');
           
           setProperty('timeBar.y', 35)
	       setProperty('timeTxt.y', 27)
	
	makeLuaSprite('key', 'key', 372.85, -50);
	setScrollFactor('key', 0.0, 0.0);
	scaleObject('key', 10.5, 10.5);
	addLuaSprite('key', false);
	
end
end