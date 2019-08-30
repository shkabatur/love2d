

newSnake = function()

    return {
        init = function(self, args)
            self.size = args.size or 2
            self.color = args.color or "red"
            self.name = args.name or "untitled"
            self.direction = "right"
            self.body = {}
            self.width = 15
            self.height = 15
            for i=self.size,1,-1 do
                self.body[i] = {x=self.width, y=self.height * i}
            end
        end,

        grow_up = function(self)
            self.size = self.size + 1
            self.body[#self.body+1] = {x=nil,y=nil}
        end,
            

        draw = function(self)
            local x
            local y
            love.graphics.setColor(0,0,225)
            for i = self.size-1, 2, -1 do
                x = self.body[i].x
                y = self.body[i].y
                love.graphics.rectangle("fill",x,y,self.width,self.height)
            end
            love.graphics.setColor(0,225,225)
            love.graphics.rectangle("fill",self.body[1].x,self.body[1].y,self.width, self.height)
        end,

        update = function(self)
            for i = self.size,2,-1 do
                self.body[i].x = self.body[i-1].x
                self.body[i].y = self.body[i-1].y
            end
            print(self.direction)
            if self.direction == "right" then
                self.body[1].x = self.body[1].x + 5
            elseif self.direction == "left" then 
                self.body[1].x = self.body[1].x - 5
            elseif self.direction == "up" then 
                self.body[1].y = self.body[1].y - 5
            elseif self.direction == "down" then 
                self.body[1].y = self.body[1].y + 5
            end
            love.timer.sleep(0.009)
        end,

        
    }
end