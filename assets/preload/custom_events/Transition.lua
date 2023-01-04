function onCreate()
    makeAnimatedLuaSprite('Transition', 'Statics/transition', 0, 0)
    addAnimationByPrefix('Transition', 'static', 'Phase3Static instance 1', 24, false)
    setObjectCamera('Transition', 'hud');
    addLuaSprite('Transition', true)
    scaleObject('Transition', 3.3, 3.3)
    setProperty('Transition.visible', false)
end

function onEvent(name, value1, value2)
	if name == 'Transition' then
		objectPlayAnimation('Transition', 'static', false)
		setProperty('Transition.visible', true)
		runTimer('Destroy', 1.65, 1)
	end
end

function onTimerCompleted(tag, Loops, LoopsLeft)
	if tag == 'Destroy' then
		setProperty('Transition.visible', false)
	end
end