function onCreate()
    makeAnimatedLuaSprite('StartStatic', 'Statics/Phase3Static', 0, 0)
    addAnimationByPrefix('StartStatic', 'static', 'Phase3Static instance 1', 24, false)
    setObjectCamera('StartStatic', 'hud');
    addLuaSprite('StartStatic', true)
    scaleObject('StartStatic', 3.3, 3.3)
    setProperty('StartStatic.visible', false)
end

function onEvent(name, value1, value2)
	if name == 'StartStatic' then
		objectPlayAnimation('StartStatic', 'static', false)
		setProperty('StartStatic.visible', true)
		runTimer('Destroy', 1.65, 1)
	end
end

function onTimerCompleted(tag, Loops, LoopsLeft)
	if tag == 'Destroy' then
		setProperty('StartStatic.visible', false)
	end
end