local ShowSplash=false

function onCreatePost()
isPixel6 = getPropertyFromClass('PlayState', 'isPixelStage')
isPixel7 = getPropertyFromClass('states.PlayState', 'isPixelStage')
if not isPixel6 or not isPixel7 then 
ShowSplash=true
for strum = 0,7 do
setPropertyFromGroup('strumLineNotes',strum,'useRGBShader',false)
end
for i = 0, getProperty('unspawnNotes.length')-1 do
setPropertyFromGroup('unspawnNotes',i,'rgbShader.enabled',false)
end
end
end

function onCreate()
isPixel6 = getPropertyFromClass('PlayState', 'isPixelStage')
isPixel7 = getPropertyFromClass('states.PlayState', 'isPixelStage')
if not isPixel6 or not isPixel7 then 
setPropertyFromClass('PlayState','SONG.arrowSkin','noteSkins/NOTE_assets')
setPropertyFromClass('states.PlayState','SONG.arrowSkin','noteSkins/NOTE_assets')
end
setPropertyFromClass('PlayState','SONG.splashSkin','noteSplashes/noteSplashes')
setPropertyFromClass('states.PlayState','SONG.splashSkin','noteSplashes/noteSplashes')
end

function onDestroy()
setPropertyFromClass('PlayState','SONG.arrowSkin','')
setPropertyFromClass('PlayState','SONG.splashSkin','')
setPropertyFromClass('states.PlayState','SONG.arrowSkin','')
setPropertyFromClass('states.PlayState','SONG.splashSkin','')
end

function goodNoteHit(id, direction, noteType, isSustainNote)
isPixel6 = getPropertyFromClass('PlayState', 'isPixelStage')
isPixel7 = getPropertyFromClass('states.PlayState', 'isPixelStage')
if not isPixel6 or not isPixel7 then 
ShowSplash=true
end
if ShowSplash then
for splashes = 0,getProperty('grpNoteSplashes.length')-1 do
setPropertyFromGroup('grpNoteSplashes',splashes,'offset.x',-20)
setPropertyFromGroup('grpNoteSplashes',splashes,'offset.y',-20)
setPropertyFromGroup('grpNoteSplashes',splashes,'alpha',0.8 * getPropertyFromGroup('playerStrums',direction,'alpha'))
end
elseif not ShowSplash then
for splashes = 0,getProperty('grpNoteSplashes.length')-1 do
setPropertyFromGroup('grpNoteSplashes',splashes,'offset.x',-10000000)
setPropertyFromGroup('grpNoteSplashes',splashes,'offset.y',-20)
setPropertyFromGroup('grpNoteSplashes',splashes,'alpha',0 * getPropertyFromGroup('playerStrums',direction,'alpha'))
end
end
end