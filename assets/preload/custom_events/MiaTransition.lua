function onCreate()
    makeAnimatedLuaSprite('MiaTransition', 'Statics/miatransition', 0, 0)
    addAnimationByPrefix('MiaTransition', 'static', 'Phase3Static instance 1', 24, false)
    setObjectCamera('MiaTransition', 'hud');
    addLuaSprite('MiaTransition', true)
    scaleObject('MiaTransition', 3.3, 3.3)
    setProperty('MiaTransition.visible', false)
end

function onEvent(name, value1, value2)
	if name == 'MiaTransition' then
		objectPlayAnimation('MiaTransition', 'static', false)
		setProperty('MiaTransition.visible', true)
		runTimer('Destroy', 1.65, 1)
	end
end

function onTimerCompleted(tag, Loops, LoopsLeft)
	if tag == 'Destroy' then
		setProperty('MiaTransition.visible', false)
	end
end