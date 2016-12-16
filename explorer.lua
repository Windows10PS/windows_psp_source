-- ## BUCLE DE EXPLORER ##
while true do
-- ## ELECCIÓN X Y PARA PARTIR EL CURSOR ##
x,y=100,100

buttons.read() --Iniciamos la lectura de los botones
color.loadpalette()
img = image.load("img/wallpaper.png")
if img then ctx,ctx2 = img:pixel(x,y) else ctx,ctx2 = color.red,0xFFFFFF03 end
if img then img:blit(0,0) end

-- ## REACCIONES BOTONES ##
if buttons.hold then
    dofile("start_screen.lua")
end
if buttons.triangle then
    dofile("start_screen.lua")
end

-- ## FUNCIONES CURSOR (SOLO PSP) ## 
function drawPointer(x,y,c)
	draw.gradline(x-5,y,x+5,y,color.white,color.white)
	draw.gradline(x,y-5,x,y+5,color.white,color.white)
end

function toHex(num)
    local hexstr = '0123456789ABCDEF'
    local s = ''
    while num > 0 do
        local mod = math.fmod(num, 16)
        s = string.sub(hexstr, mod+1, mod+1) .. s
        num = math.floor(num / 16)
    end
    if s == '' then s = '0' end
    return "0x"..s
end

-- ## MOVIMIENTO CURSOR ##
if (buttons.held.right) and x<479 then x+=1; ctx,ctx2 = img:pixel(x,y) end
if (buttons.held.left) and x>1 then x-=1; ctx,ctx2 = img:pixel(x,y) end
if (buttons.held.up) and y>1 then y-=1; ctx,ctx2 = img:pixel(x,y) end
if (buttons.held.down) and y<271 then y+=1; ctx,ctx2 = img:pixel(x,y) end

drawPointer(x,y,0xFFFFFF00)

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