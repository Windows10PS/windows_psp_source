cursor={}
cursor[1]={x=100,y=150,i=cur}

function mover_cursor()
buttons.read()
if buttons.left() then cursor[1].x = cursor[1].x -4 end
if buttons.right() then cursor[1].x = cursor[1].x +4 end
if buttons.up() then cursor[1].y = cursor[1].y -4 end
if buttons.down() then cursor[1].y = cursor[1].y +4 end
image.blit(cursor[1].x,cursor[1].y,cursor[1].i) -- Muestra cursor
end

--bordes de cursor

function bordes()
if cursor[1].x < 5 then cursor[1].x = 5 end
if cursor[1].y < 5 then cursor[1].y = 5 end
if cursor[1].x > 185 then cursor[1].x = 185 end
if cursor[1].y > 265 then cursor[1].y = 265 end
end