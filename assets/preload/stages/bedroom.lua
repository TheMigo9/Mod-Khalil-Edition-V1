function onCreate()
	-- background shit
	makeLuaSprite('bedroom', 'bedroom', -100, -300);
	setScrollFactor('bedroom', 0.9, 0.9);

    addLuaSprite('bedroom', false);



	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end