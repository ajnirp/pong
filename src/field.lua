field = {}

function field.load()
  field.x = width / 2
  field.y = height / 2
  field.r = height / 3
end

function field.draw()
  -- draw boundary
  love.graphics.setColor(0,0,0)
  love.graphics.setLineWidth(1)
  love.graphics.circle('line', field.x, field.y, field.r, 64)
end

function field.xy(angle)
  return field.x + (field.r * math.cos(angle)),
         field.y + (field.r * math.sin(angle))
end