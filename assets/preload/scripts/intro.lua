--by sloow

--IMPORTANT VARIABLES!!! (change only the color variable)
------------------------------- 
    local color = 'fa0202'   --
    local ease = 'expoInOut' --
    local time = 1.2         --
-------------------------------

function onCreate()
    --creating the images
    makeLuaSprite('box', 'empty', -500, 310) -- -40
    makeLuaSprite('box2', 'empty', -240, 310) -- 360
    makeGraphic('box', 350, 90, '000000')
    makeGraphic('box2', 70, 90, color)
    setObjectCamera('box', 'other')
    setObjectCamera('box2', 'other')
    addLuaSprite('box')
    addLuaSprite('box2')
    --creating the texts
    makeLuaText('now', 'Now Playing:', 450, -500, 315) -- 0
    makeLuaText('song', songName, 450, -500, 340) -- 0
    setObjectCamera('now', 'other')
    setObjectCamera('song', 'other')
    setTextAlignment('now', 'left')
    setTextAlignment('song', 'left')
    setTextSize('now', 20)
    setTextSize('song', 30)
    addLuaText('now')
    addLuaText('song')
end

function onSongStart()
    --tweens
    doTweenX('boxt', 'box', 0, time, ease)
    doTweenX('box2t', 'box2', 350, time, ease)
    doTweenX('nowt', 'now', 0, time, ease)
    doTweenX('songt', 'song', 0, time, ease)

    --timer
    runTimer('bye', '6')
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'bye' then
        doTweenX('boxtt', 'box', -500, time, ease)     
        doTweenX('box2tt', 'box2', -250, time, ease)
        doTweenX('nowtt', 'now', -500, time, ease)
        doTweenX('songtt', 'song', -500, time, ease)
    end
end

function onTweenCompleted(tag)
    if tag == 'boxtt' then
        removeLuaSprite('box')
    elseif tag == 'box2tt' then
        removeLuaSprite('box2')
    elseif tag == 'nowtt' then
        removeLuaSprite('now')
    elseif tag == 'songtt' then
        removeLuaSprite('song')
    end
end --is done!