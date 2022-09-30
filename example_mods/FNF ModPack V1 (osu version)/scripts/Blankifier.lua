function onCreatePost()
	triggerEvent('Change Character', 0, 'blank');
	triggerEvent('Change Character', 1, 'blank2');
	triggerEvent('Change Character', 2, 'blank');
	triggerEvent('Change Character', 3, 'blank');
end

function onGameOver()
         restartSong(false)
         return Function_Stop
end