while true do
buttons.read()
img = image.load("img/login.png")
if img then img:blit(0,0) end

-- ## INICIAR WIFI DESDE EL INICIO DEL HOMEBREW ##
--wlan.connect()

-- ## LEER USUARIO DE WINDOWS 10 PSP ## NO USAR!!!
--archivo = io.open("conf/user.txt","r") -- SE LEE EL ARCHIVO EN DONDE SE ALMACENA EN EL USUARIO (PUEDE EDITARSE MANUALMENTE)
--Linea = archivo:read() -- SOLO SE LEE LA PRIMERA LINEA
--screen.print(220,130,Linea) -- IMPRIMIENDO USUARIO

-- ## LEER USUARIO DESDE EL NICK DE LA PSP ##
screen.print(200,130,""..os.nick())

-- ## REINICIAR HOMEBREW ##
if buttons.square then dofile("script.lua") end

-- ## ENCENDER PANTALLA PSP ##
if buttons.r then system.enableDisplay() end

-- ## MUESTRA INSTRUCCIONES PARA DESBLOQUEAR WINDOWS 10 PSP ##
screen.print(145,170,"Presiona X para desbloquear.")
screen.print(185,190,"Press X to unlock.")

-- ## ENTRAR AL EXPLORER ##
if buttons.cross then dofile("explorer.lua") end

screen.flip()
end
