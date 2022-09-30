intHealth = 1 -- Health of the player (0-2)
health = 50 -- Health of the player (0-100)
maxHealth = 2.01 -- Max Health of the player (0-2), it is set to 2.01 so it doesn't have a small bar lmao
prevHealth = 1 -- This health value get's updated AFTER all the script, used for the value bellow
removeExtraHealth = 0 -- Make it so any health past the max health will be drained instantly or not (1 = true, Any Other Value = false)
fakeHealth = 1 -- Value used to calculate the health drain without accidentally killing the player

drain = 0 -- Drain value (0-2)
constDrain = 0 -- Constant Drain that slowly deplete (0-2)
tempDrain = 0 -- Temporary Drain (0-2)
tempConstDrain = 0 -- Temporary Constant Drain (0-2)
depletion = 0.01 -- The rate of depletion of temporary values, goes for both negative and positive

-- THE VALUE BELLOW APPLY TO BOTH VERSION (Temporary and Permanent)
minDrain = 0 -- Minimum Health, the drain won't go down/up more then that (0-2)
minConstDrain = 0 -- Minimum Health, the constant drain won't go down/up more then that (0-2)

barDistance = 0 -- Visual Bar for Max Health, do not touch!
showBar = false -- Show the max health bar or not, change it to false if you don't want to


function onCreate()
end

function goodNoteHit(id, direction, noteType, isSustainNote)

end

function opponentNoteHit(id, direction, noteType, isSustainNote)

	-- Drain the player when the opponent hit
    if not isSustainNote then
    -- if noteType == 'INSERT NOTE TYPE HERE' then -- If you want custom notes to drain differently
		if drain+tempDrain > 0 then
			if intHealth > minDrain then
				fakeHealth = intHealth-(drain+tempDrain)
				if fakeHealth < minDrain then
					fakeHealth = minDrain
				end
				setProperty('health', fakeHealth)
			end
		elseif drain+tempDrain < 0 then
			if intHealth < minDrain then
				fakeHealth = intHealth-(drain+tempDrain)
				if fakeHealth > minDrain then
					fakeHealth = minDrain
				end
				setProperty('health', fakeHealth)
			end
		end
	-- end -- Don't forget this end for the commented if
	end
	
	-- Drain the player when the opponent hit long notes (drain 1.5x less for the long part, the initial note drain normally, change drain to 0 if you don't want drain for long notes)
	if isSustainNote then
    -- if noteType == 'INSERT NOTE TYPE' then -- If you want custom notes to drain differently
		if drain+tempDrain > 0 then
			if intHealth > minDrain then
				fakeHealth = intHealth-((drain+tempDrain)*0.5)
				if fakeHealth < minDrain then
					fakeHealth = minDrain
				end
				setProperty('health', fakeHealth)
			end
		elseif drain+tempDrain < 0 then
			if intHealth < minDrain then
				fakeHealth = intHealth-((drain+tempDrain)*0.5)
				if fakeHealth > minDrain then
					fakeHealth = minDrain
				end
				setProperty('health', fakeHealth)
			end
		end
	-- end -- Don't forget this end for the commented if
	end
end

function noteMiss(id, direction, noteType, isSustainNote)
	-- maxHealth = maxHealth-0.02 -- Player would lose 5% of max health per hit
	
	if noteType == 'INSERT NOTE TYPE HERE' or noteType == 'INSERT SECOND NOTE TYPE IF WANTED' then
		tempDrain = tempDrain+0.001;
		runTimer('stopDrain', 3);
	end
	
	if noteType == 'INSERT NOTE TYPE HERE' or noteType == 'INSERT SECOND NOTE TYPE IF WANTED' then
		tempConstDrain = tempConstDrain+0.001;
		runTimer('stopConstDrain', 3);
	end
end

function onTimerCompleted(tag)
	if tag == 'stopDrain' then
		if tempDrain > depletion then -- If it's above depletion
			tempDrain = tempDrain - depletion;
		elseif tempDrain < -depletion then -- If it's bellow negative depletion
			tempDrain = tempDrain + depletion;
		else -- If it's in between, this is made so the value doesn't shift from positive to negative every second
			tempDrain = 0
		end
		
		if tempDrain ~= 0 then -- If not 0, then continue depletion
			runTimer('stopDrain', 1);
		end
	end
	if tag == 'stopConstDrain' then
		if tempConstDrain > 0 and tempConstDrain > depletion then -- If it's above depletion
			tempConstDrain = tempConstDrain - depletion;
		elseif tempConstDrain < 0 and tempConstDrain < -depletion then -- If it's bellow negative depletion
			tempConstDrain = tempConstDrain + depletion;
		else -- If it's in between, this is made so the value doesn't shift from positive to negative every second
			tempConstDrain = 0
		end
		
		if tempConstDrain ~= 0 then -- If not 0, then continue depletion
			runTimer('stopConstDrain', 1);
		end
	end
	-- Thanks frantastic24 for this part of the script!
end

function onEvent(name, value1, value2)
	if name == 'SetDepletion' then
		if value1 > 0 then
			depletion = value1/50 -- Positive Depletion Value
		elseif value1 < 0 then
			depletion = -value1/50 -- Negative Depletion Value
		else
			depletion = depletion -- Nice try
		end
		-- No Value 2
	end
	if name == 'SetDrain' then
		drain = value1/50 -- Drain Value
		minDrain = value2/50 -- Minimum Drain Value
	end
	if name == 'SetConstDrain' then
		constDrain = value1/50 -- Drain Value
		minConstDrain = value2/50 -- Minimum Drain Value
	end
	if name == 'SetMaxHealth' then
		maxHealth = value1/50 -- Max Health Value
		removeExtraHealth = value2 -- Does the player lose any extra health they had?
	end
	if name == 'SetHealth' then
		intHealth = value1/50 -- Set the internal health value
		health = value1 -- Set the percentage health value
		setProperty('health', value1/50) -- Set the player actual health
		if value2 == 1 and removeExtraHealth == 1 then -- If wanted, set the previous health to the health value wanted (only if "removeExtraHealth" is true)
			prevHealth = value1/50
		end
	end
end

function onUpdatePost(elapsed)

	intHealth = getProperty('health')
	health = intHealth*50

	if constDrain+tempConstDrain > 0 then -- Drain the player constantly
		if intHealth > minConstDrain then
			fakeHealth = intHealth-(constDrain+tempConstDrain)
			if fakeHealth < minConstDrain then
				fakeHealth = minConstDrain
			end
			setProperty('health', fakeHealth)
		end
	elseif constDrain+tempConstDrain < 0 then -- Give the player health constantly
		if intHealth < minConstDrain then
			fakeHealth = intHealth-(constDrain+tempConstDrain)
			if fakeHealth > minConstDrain then
				fakeHealth = minConstDrain
			end
			setProperty('health', fakeHealth)
		end
	end
	
	if showBar == true then
		barDistance = 300*(-maxHealth+1) -- Yes this is a mess, but who cares, it works
		makeLuaText("hpbar", '|', 400, 440+barDistance, 630)
		setTextColor("hpbar", 'FF0000')
		setTextBorder("hpbar", 2.9, '440000')
		setTextSize("hpbar", 32)
		setObjectCamera("hpbar", 'hud');
		addLuaText("hpbar")
		if intHealth <= 0 then
			removeLuaText("hpbar")
		end
	end
	
	if maxHealth < 2 then
		if removeExtraHealth ~= 1 then
			if intHealth > prevHealth and intHealth > maxHealth then -- If the player has more hp then previously
				setProperty('health', prevHealth)
			elseif prevHealth < intHealth and intHealth > maxHealth then -- If the player has less hp then previously
				prevHealth = intHealth
			elseif maxHealth <= intHealth then -- If the player is bellow/equal to the max health
				prevHealth = maxHealth
			end
		else
			if intHealth > maxHealth then
				setProperty('health', maxHealth)
			end
		end
	end
	
	prevHealth = getProperty('health') -- Set previous health to the curent health value after everything
end

-- An homemade script so I can make BF suffer :D -TBiscuit1