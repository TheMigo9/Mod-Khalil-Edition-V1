local misslimit = 40 -- You can set this to any number you want!

function onUpdatePost(elasped)
    setTextString('scoreTxt', 'Score: ' .. score .. ' | combobreak: ' .. misses .. '/'.. misslimit)
end

function onUpdate(elapsed)
    if misses > misslimit then
        setProperty('health', 0)
    end
end