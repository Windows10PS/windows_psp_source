-- ## PRESENTACIÓN CON EL LOGO DE MICROSOFT ##
splash.old("img/splash1.png")

-- ## CARGA DE LIBRERÍA WAVE ##
dofile("libs/wavelib.lua")
dofile("wave/splash.lua")

-- ## MUESTRA WAVE PSP ##
splash.win()

-- ## PRESENTACIÓN CON EL LOGO DE WINDOWS ##
splash.old("img/splash2.png")

-- ## PRESENTACIÓN CON EL LOGO DE PSP ##
splash.old("img/splash3.png")

-- ## IR A PÁGINA DE LOGIN ##
dofile("aviso.lua")
screen.flip()