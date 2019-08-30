

newSnake = function()

    return {
        init = function(self, args)
            self.size = args.size or 2
            self.color = args.color or "red"
            self.name = args.name or "untitled"
            self.direction = "right"
            self.body = {}
            for i=1, self.size do
                self.body[i] = {x=15*i,y=15}
            end
        end,

        draw = function(self)
            for i=1, self.size do
                love.graphics.rectangle("fill", self.body[i].x, self.body[i].y,15,15)
            end
        end,

        update = function(self)
            for i = 1, self.size - 1 do
                self.body[i].x = self.body[i+1].x
                self.body[i].y = self.body[i+1].y
                self.body[i].direction = self.body[i+1].direction
            end
            if self.direction == "right" then
                self.body[#self.body].direction = "right"
                self.body[#self.body].x = self.body[#self.body].x + 15
            end
            love.timer.sleep(0.2)
        end,

        
    }
end