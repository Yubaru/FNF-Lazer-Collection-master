function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Dodge Note2' then 
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'DODGENOTE_assets'); 
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0); 
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -20);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 1);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then 
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); 
			end
		end
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Dodge Note' then
		playSound('baa', 0.4);
		characterPlayAnim('dad', 'hey', true);
		characterPlayAnim('boyfriend', 'dodge', true);
		setProperty('boyfriend.specialAnim', true);
		setProperty('dad.specialAnim', true);
		cameraShake('camGame', 0.4, 0.05)
    end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'Dodge Note' and difficulty == 2 then
		setProperty('health', getProperty('health')-0.3);
		playSound('baa', 0.4);
		characterPlayAnim('dad', 'hey', true);
		characterPlayAnim('boyfriend', 'hurt', true);
		setProperty('boyfriend.specialAnim', true);
		setProperty('dad.specialAnim', true);
		cameraShake('camGame', 0.4, 0.05)
	elseif noteType == 'Dodge Note' and difficulty == 1 then
		setProperty('health', getProperty('health')-0.3);
		playSound('baa', 0.4);
		characterPlayAnim('dad', 'hey', true);
		characterPlayAnim('boyfriend', 'hurt', true);
		setProperty('boyfriend.specialAnim', true);
		setProperty('dad.specialAnim', true);
		cameraShake('camGame', 0.4, 0.05)
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	-- A loop from a timer you called has been completed, value "tag" is it's tag
	-- loops = how many loops it will have done when it ends completely
	-- loopsLeft = how many are remaining
	if loopsLeft >= 1 then
		setProperty('health', getProperty('health')-0.001);
	end
end