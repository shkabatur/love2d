require("snake")

function love.load()
    love.graphics.setBackgroundColor(255,153,0)
    love.graphics.setColor(0,0,225)

    snake = newSnake()

    snake:init({name="Den's Snake", color="red", size=10})
    

end

function love.draw()
   snake:draw()
end

function love.update(dt)
    if dt < 1/30 then
        love.timer.sleep(1/30 - dt)
    end
    snake:update()
end
