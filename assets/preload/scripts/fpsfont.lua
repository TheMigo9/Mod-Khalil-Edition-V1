local fontName = 'comic.ttf'

function onCreate()
addHaxeLibrary('Main')
addHaxeLibrary('TextFormat','openfl.text')
end

function onUpdatePost()
runHaxeCode([[
var fontName = ']]..fontName..[[';
Main.fpsVar.defaultTextFormat = new TextFormat(Paths.font(fontName), 14);
]])
end