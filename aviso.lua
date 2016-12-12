buttons.read()

answer = os.message("Esta es una prueba de booteo para que el OS no se cuelgue.\n\nEsto se hace más que nada para alivianar la memoria de la PSP. \nContinuar?", 1)

if answer == 0 then
    os.exit()
else
    dofile("start_screen.lua")
end