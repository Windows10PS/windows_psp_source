-- ## BUCLE DE EXPLORER ##
while true do

buttons.read() --Iniciamos la lectura de los botones
color.loadpalette()
if wallpaper then wallpaper:blit(0,0) end

-- ## REACCIONES PARA BLOQUEAR ##
if buttons.hold then
    dofile("start_screen.lua")
end
if buttons.triangle then
    dofile("start_screen.lua")
end
	
-- ## BARRA DE ESTADO ##
screen.print(0,-2,wlan.over(),0.5)
if batt.charging() == false then
image.blit(battery,380,0)
screen.print(400,-2,batt.lifepercent(),0.5)
elseif batt.charging() == true then
image.blit(charging,380,0)
end
screen.print(428,-2,os.date("%I:%M %p"),0.5)


-- ## ELEMENTOS / OBJETOS SELECCIONABLES ##
--screen.print(78,122,"Esta pantalla es solo de prueba para la Alpha. \n                                (Alpha 1.7)")
--screen.print(78,152,"Modelo: PSP "..hw.getmodel())
--screen.print(78,172,"PSP Gen"..hw.gen())
image.blit(ajustes_icon,66,50) -- Baldosa Configuración --
screen.print(68,105,"Configuración",0.4)


-- ## ACCIONES BALDOSAS ##

-- ## ELEMENTO CURSOR (SOLO PSP) [IMPORTANTE: DEJAR SIEMPRE AL FINAL DE CADA LUA QUE SE NECESITE USAR EL CURSOR] ##
if buttons.held.up then y -= v
elseif buttons.held.down then y += v
elseif buttons.held.left then x -= v
elseif buttons.held.right then x += v
end

image.blit(cursor,x,y)

screen.flip()
end