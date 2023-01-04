function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'B3_bf_dead_triptrou')
	--background shit

	makeLuaSprite('dream', 'dream', -785, -440);
	setScrollFactor('dream', 0.9, 0.9);

	addLuaSprite('dream', false);
	scaleObject('dream', 2.3, 2.3)

	makeAnimatedLuaSprite('staticWhite', 'staticWhite', 0, 0)
	addAnimationByPrefix('staticWhite', 'staticWhite', 'staticWhite', 25, true)
	setScrollFactor('staticWhite', 0, 0)
	setProperty('staticWhite.alpha', 0)

	makeAnimatedLuaSprite('staticRed', 'staticRed', 0, 0)
	addAnimationByPrefix('staticRed', 'staticRed', 'staticRed', 25, true)
	setScrollFactor('staticRed', 0, 0)
	setProperty('staticRed.alpha', 0.1)

	addLuaSprite('scanlines', true)
	addLuaSprite('staticWhite', true)
	addLuaSprite('staticRed', true)

	objectPlayAnimation('scanlines', 'scanlines', false)
	setObjectCamera('scanlines', 'camHUD')

	objectPlayAnimation('staticWhite', 'staticWhite', false)
	setObjectCamera('staticWhite', 'camHUD')

	objectPlayAnimation('staticRed', 'staticRed', false)
	setObjectCamera('staticRed', 'camHUD')

	--make effects

	makeLuaSprite('vignette', 'vignette', 0, 0)
	setObjectCamera('vignette', 'camHUD')
	addLuaSprite('vignette', true)
	scaleObject('vignette', 2.0, 2.0)

	addVCREffect('camGame',0,true,true,true) --Not functional currently
	close(true);--Ends stage script
end