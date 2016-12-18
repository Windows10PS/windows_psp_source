-- ## DETECCIÓN DE OPCIONES ##
collectgarbage()
option,y=1,17
buttons.interval(10,10)

-- ## BUCLE DE EXPLORER ##
while true do

buttons.read() --Iniciamos la lectura de los botones
color.loadpalette()
if wallpaper then wallpaper:blit(0,0) end

-- ## REACCIONES BOTONES ##
if buttons.hold then
    dofile("../start_screen.lua")
end
if buttons.triangle then
    dofile("../start_screen.lua")
end

-- ## BARRA DE ESTADO ##
screen.print(0,0,""..wlan.over(),0.6)
screen.print(370,0,""..batt.lifepercent().." %",0.6)
screen.print(415,0,os.date("%I:%M %p"),0.6)

screen.print(35,17,"Ajustes",0.6)
screen.print(35,29,"Música",0.6)
screen.print(35,41,"Fotos",0.6)
screen.print(35,53,"Videos",0.6)
screen.print(35,65,"Mensajes",0.6)
screen.print(35,77,"Usuario",0.6)
screen.print(35,89,"Apagar",0.6)
screen.print(12,y," -> ",0.6)

if buttons.down then
    option += 1
    y += 12
elseif buttons.up then
    option -= 1
    y -= 12
end
if option < 1 then
    option,y = 7,89
end
if option > 7 then
    option,y = 1,17
end

if buttons.cross then
    if option == 1 then dofile("../ajustes.lua")
    elseif option == 2 then dofile("../musica.lua")
    elseif option == 3 then dofile("../fotos.lua")
    elseif option == 4 then dofile("../videos.lua")
    elseif option == 5 then dofile("../mensajes.lua")
    elseif option == 6 then dofile("../usuario.lua")
    elseif option == 7 then 
    answer = os.message("Seguro que deseas apagar?",1)
        if answer == 0 then
            os.message("gracias!")
        else
            os.exit()
        end
    end
end

-- ## ELEMENTOS / OBJETOS SELECCIONABLES ##
screen.print(78,122,"Esta pantalla es solo de prueba para la Alpha. \n                                (Alpha 1.5-2)")

screen.flip()
end