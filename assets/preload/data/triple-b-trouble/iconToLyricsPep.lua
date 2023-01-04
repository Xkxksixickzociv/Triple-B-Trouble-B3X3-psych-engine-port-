function onCreate()
    makeLuaSprite('pepper','pepper', 0, 365)
    scaleObject('pepper', 0.8, 0.8)
    screenCenter('pepper','x')
    setProperty('pepper.visible', false)

    setObjectCamera('pepper','camOther')
    addLuaSprite('pepper', false)
end
  
function onStepHit()
    if curStep == 1296 or curStep == 1424 or curStep == 1544 or curStep == 1680 then
        setProperty('pepper.visible', true)
    elseif curStep == 1360 or curStep == 1496 or curStep == 1622 or curStep == 2320 then
        setProperty('pepper.visible', false)
    end
end