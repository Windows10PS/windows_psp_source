buttons.read()

answer = os.message("Bienvenido a la Beta 0.7 de Windows 10 PSP \n\nDesarrolladores: \nROM-PacMe \nKillingName", 1)

if answer == 0 then
    os.exit()
else
    dofile("start_screen.lua")
end