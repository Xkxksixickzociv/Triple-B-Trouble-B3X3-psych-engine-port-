function onCreate()
    makeAnimatedLuaSprite('PepTransition', 'Statics/peptransition', 0, 0)
    addAnimationByPrefix('PepTransition', 'static', 'Phase3Static instance 1', 24, false)
    setObjectCamera('PepTransition', 'hud');
    addLuaSprite('PepTransition', true)
    scaleObject('PepTransition', 3.3, 3.3)
    setProperty('PepTransition.visible', false)
end

function onEvent(name, value1, value2)
	if name == 'PepTransition' then
		objectPlayAnimation('PepTransition', 'static', false)
		setProperty('PepTransition.visible', true)
		runTimer('Destroy', 1.65, 1)
	end
end

function onTimerCompleted(tag, Loops, LoopsLeft)
	if tag == 'Destroy' then
		setProperty('PepTransition.visible', false)
	end
end