function onUpdate(elapsed)
    local currentBeat = (songPos/300)*(curBpm/350)
    setCharacterY('dad', getCharacterY('dad') + (math.sin(currentBeat) * 2.6))
        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN') then
  loadSong('Unfairness', 'Unfairness', true);
 end
end
function onCreate()
    makeLuaText('credits', "", 0, -2, 655); -- You can edit the created by Prisma Text just dont change anything else
    setTextSize('credits', 20);
    addLuaText('credits');
    makeLuaText('credits2', "vs fnf khalil edition v1", 0, -2, 685); -- You can edit the created by Prisma Text just dont change anything else
    setTextSize('credits2', 16);
    addLuaText('credits2');
end

function onTimerCompleted(tag)
 if tag == 'bigCOCK' then
  setProperty('inCutscene', false)
 end
end