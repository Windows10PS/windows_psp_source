-- ## BUCLE DE EXPLORER ##
while true do

buttons.read() --Iniciamos la lectura de los botones
color.loadpalette()
if wallpaper then wallpaper:blit(0,0) end

-- ## REACCIONES BOTONES ##
if buttons.hold then
    dofile("start_screen.lua")
end
if buttons.triangle then
    dofile("start_screen.lua")
end

-- ## ELEMENTO CURSOR (SOLO PSP) ##
if buttons.held.up then y -= v
elseif buttons.held.down then y += v
elseif buttons.held.left then x -= v
elseif buttons.held.right then x += v
end

image.blit(cursor, x, y) -- Dibujamos el cursor
	
-- ## BARRA DE ESTADO ##
screen.print(0,0,""..wlan.over(),0.6)
screen.print(370,0,""..batt.lifepercent().." %",0.6)
screen.print(415,0,os.date("%I:%M %p"),0.6)


-- ## ELEMENTOS / OBJETOS SELECCIONABLES ##
screen.print(78,122,"Esta pantalla es solo de prueba para la Alpha. \n                                (Alpha 1.6)")
screen.print(78,152,"Modelo: PSP "..hw.getmodel())
screen.print(78,172,"PSP Gen"..hw.gen())

screen.flip()
end