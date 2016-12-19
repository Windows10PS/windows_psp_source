while true do
buttons.read()

-- ## BACKGROUND ##
if wallpaper then wallpaper:blit(0,0) end

-- ## INICIAR WIFI DESDE EL INICIO DEL HOMEBREW ##
--wlan.connect()

-- ## LEER USUARIO DE WINDOWS 10 PSP ## NO USAR!!!
--archivo = io.open("conf/user.txt","r") -- SE LEE EL ARCHIVO EN DONDE SE ALMACENA EN EL USUARIO (PUEDE EDITARSE MANUALMENTE)
--Linea = archivo:read() -- SOLO SE LEE LA PRIMERA LINEA
--screen.print(220,130,Linea) -- IMPRIMIENDO USUARIO

-- ## REINICIAR HOMEBREW ##
if buttons.square then dofile("script.lua") end

-- ## BARRA DE ESTADO ##
screen.print(370,0,""..batt.lifepercent().." %",0.6)

-- ## COMPOSICIÓN LOCKER ##
screen.print(15,220,os.date("%I:%M %p"),1.3)
screen.print(18,240,"Press X to Unlock",0.6)

-- ## ENTRAR AL EXPLORER ##
if buttons.cross then 
    dofile("apps/explorer/explorer.lua")
end

screen.flip()
end
