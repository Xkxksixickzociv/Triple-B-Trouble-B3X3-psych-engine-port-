local opponentDrain = false
function onStepHit()
    if curStep > 2832 and curStep < 4112 then
        opponentDrain = true
    else
        opponentDrain = false
    end
end

function onUpdatePost(elapsed)
    if opponentDrain == true then
        if getHealth() > 0.05 then
            setProperty('health', getProperty('health') - 0.000475)
        end
    end
end

function opponentNoteHit(id, direction, noteType, isSustain)
    if opponentDrain == true then
        if getHealth() > 0.05 then
            setProperty('health', getProperty('health') - 0.0075)
        end
    end
end