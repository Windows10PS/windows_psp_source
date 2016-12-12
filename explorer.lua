-- ## BUCLE DE EXPLORER ##
while true do
buttons.read() --Iniciamos la lectura de los botones
img = image.load("img/wallpaper.png")
if img then img:blit(0,0) end

-- ## REACCIONES BOTONES ##
if buttons.start then dofile("explorer.lua") end
if buttons.r then dofile("start_screen.lua") end
if buttons.hold then
    dofile("start_screen.lua")
    end

-- ## BARRA DE ESTADO ##
wlan.status()
if wlan.status == 1 then
    wifi = image.load("img/wifi.png")
    if wifi then wifi:blit(0,0) end
end

screen.print(370,0,""..batt.lifepercent().." %",0.6)
screen.print(415,0,os.date("%I:%M %p"),0.6)

screen.flip()
end