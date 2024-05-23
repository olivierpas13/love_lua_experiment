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
    name = "vier";
    names = {};
    table.insert(names, "vier");
    table.insert(names, "fünf");
    table.insert(names, "sechs");
    table.insert(names, "sieben");
end

function love.update(dt)
    delta = dt;
    
    -- if positionX < 800 then
    --     positionX = positionX + 100*dt;
    -- end
    -- left and right movement
    if(love.keyboard.isDown("right")) then
        positionX = positionX + 100*dt;
    elseif(love.keyboard.isDown("left")) then
        positionX = positionX - 100*dt;
    end
end

function love.draw()
    love.graphics.print("Hello, " .. name, 400, 300)
    love.graphics.print(delta, 400, 400)
    drawCircle(positionX, 400, 50);
    for i,name in ipairs(names) do
        love.graphics.print(name, 250, 50 + i*50)
    end
    love.graphics.print("amount of names in table: " .. #names, 400, 250);
end

