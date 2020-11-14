require("player") --Lets our game know that we have created a new file named "player.lua"

function love.load() --Base Löve function, all the code inside is called 1 time when the game starts.
   Player:load() -- Calls the "Player:load"-function that loads all  the players variables.
end


function love.update(dt) -- Base Löve function, all the code inside is called every frame. DT stands for Delta time and is the time it took to produce the frame.
   Player:update(dt) --Calls the "Player:update"-function that loads all  the players variables.
end


function love.draw() -- Base Löve function, all the code inside is called every frame. Used to draw graphics to the screen.
   Player:draw() -- Calls the "Player:draw"-function that draws the players paddle.
end
