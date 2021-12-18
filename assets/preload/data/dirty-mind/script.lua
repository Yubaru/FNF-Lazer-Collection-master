function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'genieboy-death'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/
end
function onStepHit()		
if curStep == 1 then 
	setProperty('defaultCamZoom', 0.8)
end

if curStep == 18 then 
	setProperty('defaultCamZoom', 1.4)
end

if curStep == 953 then 
	setProperty('defaultCamZoom', 0.8)
end