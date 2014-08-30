function love.conf(t)
  t.identity = nil
  t.version = "0.9.1"
  t.console = false

  t.window.title = "Pong"
  t.window.icon = nil -- to add
  t.window.width = 800
  t.window.height = 600
  t.window.borderless = true
  t.window.resizable = false
  -- t.window.highdpi = true
  -- t.window.srgb = true
end