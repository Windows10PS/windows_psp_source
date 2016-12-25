while true do
buttons.read()
if fondo_ajustes then fondo_ajustes:blit(0,0) end

-- ## BACK TEMPORAL ##
if buttons.circle then
    dofile("apps/explorer/explorer.lua")
end

screen.flip()
end