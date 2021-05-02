class Box
    # constructor method
    def initialize(w,h)
       @width, @height = w, h
    end
 
    # accessor methods
    def getWidth
       @width
    end
    def getHeight
       @height
    end
 
    # setter methods
    def setWidth=(value)
       @width = value
    end
    def setHeight=(value)
       @height = value
    end

    # instance method
    def getArea
    @width * @height
    end
 end
 
 # create an object
 box = Box.new(10, 20)
 
 # use setter methods
 box.setWidth = 30
 box.setHeight = 50
 
 # use accessor methods
 x = box.getWidth()
 y = box.getHeight()
 a = box.getArea()
 
 puts "Width of the box is : #{x}"
 puts "Height of the box is : #{y}"
 puts "Area of the box is : #{a}"
