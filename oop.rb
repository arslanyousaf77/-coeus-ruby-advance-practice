class Box
    # constructor method
    @@count = 0

    BOX_COMPANY = "Coeus Solutions GmbH"
    BOXWEIGHT = 10
    
    def initialize(w,h)
       # assign instance avriables
       @width, @height = w, h
 
       @@count += 1
    end
 
    def self.printCount()
       puts "Box count is : #@@count"
    end

    # accessor methods
    def getWidth
       @width
    end
    def getHeight
       @height
    end
 
    private :getHeight, :getWidth
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

    def printArea
        @area = getWidth() * getHeight
        puts "Big box area is : #@area"
     end
     protected :printArea
     
    def to_s
        "(w:#@width,h:#@height)"  # string formatting of the object.
    end

    #Addition of two Box Objects
    def +(other)
        Box.new(@width+other.width,@height+other.height)
    end

    #Negation of two objects
    def -@
        Box.new(-@width, -@height)
    end

    #Scalar Multiplication
    def *(scalarNum)
        Box.new(@width*scalarNum, @height*scalarNum)
    end


 end
 
 # create an object
 box = Box.new(10, 20)
 box2 = Box.new(12,2)
 
 # use setter methods
 box.setWidth = 30
 box.setHeight = 50
 
 # use accessor methods

 a = box.getArea()
 
 puts "Area of the box is : #{a}"
 Box.printCount()
 puts "String representation of box is : #{box}"
 #box.printArea

 puts "String representation of box is : #{-box}"

 box.freeze
if( box.frozen? )
   puts "Box object is frozen object"
else
   puts "Box object is normal object"
end

# now try using setter methods
# box.setWidth = 30
# box.setHeight = 50

puts Box::BOX_COMPANY
puts "Box weight is: #{Box::BOXWEIGHT}"

# create another object using allocate
box2 = Box.allocate


 class BigBox < Box

    # add a new instance method
    def printArea
       @area = @width * @height
       puts "Big box area is : #@area"
    end
 end
 
 # create an object
 box = BigBox.new(10, 20)
 
 # print the area
 box.printArea()