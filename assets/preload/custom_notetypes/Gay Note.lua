function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Gay Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'gayNotes'); --Change texture
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.023'); --Default value is: 0.023, health gained on hit
				setPropertyFromGroup('unspawnNotes', i, 'missHealth', '1'); --Default value is: 0.0475, health lost on miss
				setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
			end
		end
	end
end