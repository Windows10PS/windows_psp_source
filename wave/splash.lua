splash.wave = wave.new(8)

function splash.win()
	-- Splash de OneLua
	splash.old()

	-- Splash de Game Demo
	for n = 255, 0, -8 do
		draw.gradrect(0, 0, 480, 272, color.new(20, 18, 18), color.new(60, 56, 56), 0)
		splash.wave:blit(color.new(255, 255, 255, 128), color.new(0,0,0,0))
		--icon.logo:blit(240, 136)
		--icon.license:blit(10, 234)
		draw.fillrect(0, 0, 480, 272, color.new(0, 0, 0, n))
		screen.flip()
	end
	local start_time = os.clock()
	while os.clock()-start_time < 2 do
		draw.gradrect(0, 0, 480, 272, color.new(20, 18, 18), color.new(60, 56, 56), 0)
		splash.wave:blit(color.new(255, 255, 255, 128), color.new(0,0,0,0))
		--icon.logo:blit(240, 136)
		--icon.license:blit(10, 234)
		screen.flip()
	end
	start_time = nil
	for n = 0, 255, 8 do
		draw.gradrect(0, 0, 480, 272, color.new(20, 18, 18), color.new(60, 56, 56), 0)
		splash.wave:blit(color.new(255, 255, 255, 128), color.new(0,0,0,0))
		--icon.logo:blit(240, 136)
		--icon.license:blit(10, 234)
		draw.fillrect(0, 0, 480, 272, color.new(0, 0, 0, n))
        screen.flip()
	end
end
