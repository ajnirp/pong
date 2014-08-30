width, height = love.graphics.getDimensions()

require('field')
require('paddle')
require('ball')

function love.load()
  love.graphics.setBackgroundColor(255,255,255)
  field.load()
  paddle.load()
  ball.load()
end

function love.draw()
  field.draw()
  paddle.draw()
  ball.draw()
end

function love.update(dt)
  paddle.update(dt)
  ball.update(dt)
end

function love.keypressed(key)
  if key == 'escape' then
    love.event.quit()
  end
end