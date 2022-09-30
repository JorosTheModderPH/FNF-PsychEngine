function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Dodge Note' then --Check if the note on the chart is a Bullet Note
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'notes/types/Shoot_Note'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0); --custom notesplash color, why not
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 0);
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.7'); --Default value is: 0.0475, health lost on miss
			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
               end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
local shootAnims = {"LEFT", "RIGHT", "UP", "DOWN"}

function goodNoteHit(id, direction, noteType, isSustainNote)

	if noteType == 'Dodge Note' then
	
	playSound('sho-2', 1);

		if difficulty == 2 then

			playSound('sho-2', 1);

		end

		characterPlayAnim('dad', shootAnims[direction + 1], false);

		characterPlayAnim('boyfriend', 'dodge', true);

		setProperty('boyfriend.specialAnim', true);

		setProperty('dad.specialAnim', true);

    end

end

-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Dodge Note' then
		playSound('sho-2', 0.9);
		characterPlayAnim('boyfriend', 'hurt', true);
		end
	end