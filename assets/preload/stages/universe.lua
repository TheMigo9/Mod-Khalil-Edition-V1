

function onCreate()
	-- background shit
	makeLuaSprite('Space','Space', -700,-600)
	setLuaSpriteScrollFactor('Space', 0.3, 0.3);
	scaleObject('Space', 1.4, 1.4)
	addLuaSprite('Space', false);
	
	makeLuaSprite('Earth','Earth', -1300,-1200)
	setLuaSpriteScrollFactor('Earth', 1, 1);
	scaleObject('Earth', 1.5, 1.5)
	addLuaSprite('Earth', false);
end


local shadname = "stridentCrisisWavy"

	function onCreatePost()
		initLuaShader("stridentCrisisWavy1")
		setSpriteShader('Space', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('Space', 'uSpeed', 2.25)
		end
		

	function onUpdatePost(elapsed)
	setShaderFloat('Space', 'uTime', os.clock())
	end

function onUpdate(elapsed)

  if curStep >= 0 then

    songPos = getSongPosition()

    local currentBeat = (songPos/1000)*(bpm/80)

    doTweenY(dadTweenY, 'dad', 300-110*math.sin((currentBeat*0.25)*math.pi),0.001)

  end

end