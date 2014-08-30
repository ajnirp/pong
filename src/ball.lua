ball = {}

function ball.load()
  ball.x = width / 2
  ball.y = height / 2
  ball.r = 10
  ball.vel = {}
  ball.vel.x = 0
  ball.vel.y = 0
end

function ball.draw()
  love.graphics.setColor(85,194,14)
  love.graphics.circle('fill', ball.x, ball.y, ball.r, 32)
end

function ball.update(dt)
  ball.x = ball.x + (ball.vel.x * dt)
  ball.y = ball.y + (ball.vel.y * dt)
  -- todo
end