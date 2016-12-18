-- ## BUCLE DE EXPLORER ##
while true do
-- ## ELECCIÓN X Y PARA PARTIR EL CURSOR ##
x,y=100,100

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

-- ## BARRA DE ESTADO ##
wlan.status()
if wlan.status() == 1 then
    if wifi then wifi:blit(0,0) end
end
screen.print(370,0,""..batt.lifepercent().." %",0.6)
screen.print(415,0,os.date("%I:%M %p"),0.6)

-- ## ELEMENTOS / OBJETOS SELECCIONABLES ##
screen.print(78,122,"Esta pantalla es solo de prueba para la Alpha. \n                                (Alpha 1.5)")

screen.flip()
end