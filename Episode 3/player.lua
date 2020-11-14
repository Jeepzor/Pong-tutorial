

Player = {}

function Player:load()
   self.x = 50
   self.y = love.graphics.getHeight() / 2
   self.width = 20
   self.height = 100
   self.speed = 500
end


function Player:update(dt)
   self:move(dt)
   self:checkBoundaries()
end


function Player:move(dt)
   if love.keyboard.isDown("w") then
      self.y = self.y - self.speed * dt
   elseif love.keyboard.isDown("s") then
      self.y = self.y + self.speed * dt
   end
end

function Player:checkBoundaries()
   if self.y < 0 then
      self.y = 0
   elseif self.y + self.height > love.graphics.getHeight() then
      self.y = love.graphics.getHeight() - self.height
   end
end


function Player:draw()
   love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end
