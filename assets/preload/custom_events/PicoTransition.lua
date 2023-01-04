function onCreate()
    makeAnimatedLuaSprite('PicoTransition', 'Statics/picotransition', 0, 0)
    addAnimationByPrefix('PicoTransition', 'static', 'Phase3Static instance 1', 24, false)
    setObjectCamera('PicoTransition', 'hud');
    addLuaSprite('PicoTransition', true)
    scaleObject('PicoTransition', 3.3, 3.3)
    setProperty('PicoTransition.visible', false)
end

function onEvent(name, value1, value2)
	if name == 'PicoTransition' then
		objectPlayAnimation('PicoTransition', 'static', false)
		setProperty('PicoTransition.visible', true)
		runTimer('Destroy', 1.65, 1)
	end
end

function onTimerCompleted(tag, Loops, LoopsLeft)
	if tag == 'Destroy' then
		setProperty('PicoTransition.visible', false)
	end
end