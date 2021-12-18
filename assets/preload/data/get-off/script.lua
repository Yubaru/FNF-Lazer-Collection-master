function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'nyu-death'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/
end
function onUpdate()
    if not middleScroll then
        setPropertyFromGroup('opponentStrums', 0, 'x', -5000);
        setPropertyFromGroup('opponentStrums', 1, 'x', -5000);
        setPropertyFromGroup('opponentStrums', 2, 'x', -5000);
        setPropertyFromGroup('opponentStrums', 3, 'x', -5000);
    end
end