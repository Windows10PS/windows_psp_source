buttons.read()

answer = os.message("Bienvenido a la Alpha 1.7 de Windows 10 PSP \n\nDesarrolladores: \nROM-PAcMe \nKillingName", 1)

if answer == 0 then
    os.exit()
else
    dofile("start_screen.lua")
end