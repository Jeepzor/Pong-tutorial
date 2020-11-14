require("player") --Lets our game know that we have created a new file named "player.lua"
require("ball")

function love.load() --Base Löve function, all the code inside is called 1 time when the game starts.
   Player:load() -- Calls the "Player:load"-function that loads all  the players variables.
   Ball:load()
end


function love.update(dt) -- Base Löve function, all the code inside is called every frame. DT stands for Delta time and is the time it took to produce the frame.
   Player:update(dt) --Calls the "Player:update"-function that handles all of the players functionallity.
   Ball:update(dt) --Calls the "Ball:update"-function that handles all of the balls functionallity.
end


function love.draw() -- Base Löve function, all the code inside is called every frame. Used to draw graphics to the screen.
   Player:draw() -- Calls the "Player:draw"-function that draws the players paddle.
   Ball:draw() -- Calls the "Ball:draw"-function that draws the ball.
end


function checkCollision(a, b) --Takes two arguments, the rectangles we want to check for collision.
   if a.x + a.width > b.x and a.x < b.x + b.width and a.y + a.height > b.y and a.y < b.y + b.height then -- Is A, intersecting B
      return true -- Returns the boolean value true, indicating that A and B are colliding.
   else
      return false -- Returns the boolean value false, indicating that A and B are not colliding.
   end
end
