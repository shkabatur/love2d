require("snake")



function love.load()
    love.graphics.setBackgroundColor(255,153,0)
    love.graphics.setColor(0,0,225)

    snake = newSnake()

    snake:init({name="Den's Snake", color="red", size=50})
    

end

function love.draw()
   snake:draw()
end

function love.update(dt)
    snake:update()
end

function love.keypressed(key)
    if key == "d" then
        snake.direction = "right"
    elseif key == "a" then
        snake.direction = "left"
    elseif key == "w" then
        snake.direction = "up"
    elseif key == "s" then
        snake.direction = "down"
    elseif key == "g" then
        snake:grow_up()
    end
end