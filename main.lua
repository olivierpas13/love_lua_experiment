function drawCircle(x, y, radius)
    love.graphics.circle("fill", x, y, radius)
end

function greetSomeone(name)
    love.graphics.print("Hello " .. name, 500, 500)
end

function love.load()
    -- called only once at the beginning of the game;
    delta = 0
    positionX = 5;
    name = "vier"
end

function love.update(dt)
    delta = dt;
    positionX = positionX + 40*dt;
    -- runs every frame;
    -- function love.draw()
    --     love.graphics.print(dt, 400, 300)
    -- end
end

function love.draw()
    love.graphics.print("Hello, " .. name, 400, 300)
    love.graphics.print(delta, 400, 400)
    drawCircle(positionX, 400, 50);
end
