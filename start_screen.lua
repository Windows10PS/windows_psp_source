while true do
buttons.read()
img = image.load("img/wallpaper.png")
battery100 = image.load("img/battery/100.png")
battery50 = image.load("img/battery/50.png")
battery10 = image.load("img/battery/10.png")
charge = image.load("img/battery/charge.png")

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
if img then img:blit(0,0) end
screen.print(15,220,os.date("%I:%M %p"),1.3)
screen.print(18,240,"Press X to Unlock",0.6)

-- ## ENTRAR AL EXPLORER ##
if buttons.cross then dofile("explorer.lua") end

screen.flip()
end
