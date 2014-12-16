class TetrisGrid
  @@row=0
  @@column=0


  def initialize(n,m)
    @row=n
    @column=m
    @grid=populateGrid(@row,@column)
    @curColumn= Array.new(@column,@row)
  end

  def populateGrid(row, column)
    return Array.new(row) { Array.new(column,0) }
  end

  def startGame()
    shape = Shape.new("squareShape", @row)

    #setPiece to move shape
    moveShape(shape)
    # while shape
    # puts shape.join(" ") + " is the shape"
    #call createShape
    #while shapes bottom hasn't reached column move piece
    #while shape
    #  moveColumn

   # end
      #callMoveColumn
  end

  def movePiece()
    #while loop
  end


  #return shape


  def getCurrentRow()
  end

  def moveShape(shape)
    #p shape.shape
    while shape.y > 0
      shape.shape.map! {|x,y| y+1}
      shape.y -= 1
      p shape
    end
  end

  def setPiece(shape)

    p shape
  end
 
  class Shape
    @@row=0
    @@column=0
    attr_accessor :shape
    attr_accessor :y

    @@shapeStorage = {
      'squareShape' =>[[@@row,@@column],[@@row,@@column+1],[@@row+1,@@column],[@@row+1,@@column+1]],
    }

    def initialize(shape,height)
      @shape=@@shapeStorage[shape]
      @y=height-1
    end

    def moveRows()
      #change columns to move shape down
    end

    def moveColumn()
      p self
    end

    def createShape()
      return @@shapeStorage["squareShape"]
      #create square shape but should create shapes based off of a random num
      #look up shape info in shape Storage
      #after create shape call movePiece throwing shape as parameters
    end

  end
end

=begin
 call code from here 
 instantiate class
 grid.startgame()
  
=end
myGrid = TetrisGrid.new(5,4)
myGrid.startGame()