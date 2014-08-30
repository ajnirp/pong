paddle = {}

function paddle.load()
  -- angle subtended in degrees
  paddle.width = 30

  -- minimum and maximum positions of the paddle
  paddle.minpos = 0
  paddle.maxpos = math.pi - (paddle.width * math.pi / 180)

  paddle.velocity = 0
  paddle.maxspeed = 2

  -- rotation around circle in radians
  -- 0 is when the right end of the paddle coincides with
  -- what we usually refer to as 0 degrees on a circle
  -- and the paddle extends left from there
  paddle.position = math.pi / 2 - (paddle.width * math.pi / 360)
end

function paddle.draw()
  love.graphics.setColor(255,0,0)
  love.graphics.setLineWidth(8)
  for i = 0, paddle.width do
    local x1, y1 = field.xy(paddle.position + (i * math.pi / 180))
    local x2, y2 = field.xy(paddle.position + ((i+1) * math.pi / 180))
    love.graphics.line(x1,y1,x2,y2)
  end
end

function paddle.update(dt)
  if love.keyboard.isDown('left') then
    paddle.velocity = paddle.velocity + 0.08
    if paddle.velocity > paddle.maxspeed then paddle.velocity = paddle.maxspeed end
  elseif love.keyboard.isDown('right') then
    paddle.velocity = paddle.velocity - 0.08
    if paddle.velocity < -paddle.maxspeed then paddle.velocity = -paddle.maxspeed end
  end

  paddle.position = paddle.position + paddle.velocity * dt
  -- if the paddle exceeds bounds, stop it right there
  -- and set its velocity to zero
  if paddle.position < paddle.minpos then
    paddle.position = paddle.minpos
    paddle.velocity = 0
  end
  if paddle.position > paddle.maxpos then
    paddle.position = paddle.maxpos
    paddle.velocity = 0
  end
end