function love.load()
    character = {}
    character.x = 300
    character.y = 400

    love.graphics.setBackgroundColor(255,153,0)
    love.graphics.setColor(0,0,225)
end

function love.draw()
    love.graphics.rectangle("fill", character.x, character.y, 100, 100)
end

function love.update(dt)
    local dt = 5
    if love.keyboard.isDown('d') then
        character.x = character.x + 1 * dt
    elseif love.keyboard.isDown('a') then
        character.x = character.x - 1 * dt
    elseif love.keyboard.isDown('w') then
        character.y = character.y - 1 * dt
    elseif love.keyboard.isDown('s') then
        character.y = character.y + 1 * dt
    end
end