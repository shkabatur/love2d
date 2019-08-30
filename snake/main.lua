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
    local direction

    if love.keyboard.isDown('d') then
        direction = "right"
    elseif love.keyboard.isDown('a') then
        direction = "left"
    elseif love.keyboard.isDown('w') then
        direction = "up"
    elseif love.keyboard.isDown('s') then
        direction = "down"
    end

    snake:update(direction)
end
