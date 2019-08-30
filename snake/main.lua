require("snake")



function love.load()
    love.graphics.setBackgroundColor(255,153,0)
    love.graphics.setColor(0,0,225)

    snake = newSnake()
    snake:init({name="Den's Snake", 
                color="purple", 
                size=50,
                keys = {
                    up = "up",
                    down = "down",
                    left = "left",
                    right = "right"
                }})
    
    snake2 = newSnake()
    snake2:init({name="Kek", 
                color="lime", 
                size=10,
                keys = {
                    up = "w",
                    down = "s",
                    left = "a",
                    right = "d"
                }
               })
    

end

function love.draw()
   snake:draw()
   snake2:draw()
end

function love.update(dt)
    snake:update()
    snake2:update()
    love.timer.sleep(0.009)
end

function love.keypressed(key)
    snake:keypressed(key)
    snake2:keypressed(key)
end