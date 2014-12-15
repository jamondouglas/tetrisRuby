class TetrisGrid
  @@row=0
  @@column=0

  @@shapeStorage = {
    'squareShape' =>[[@@row,@@column],[@@row,@@column+1],[@@row+1,@@column],[@@row+1,@@column+1]],
  }

  def initialize(n,m)
    @row=n
    @column=m
    @curColumn=[]
  end

  def populateGrid()
  end

  def startGame()
    shape = createShape()
    puts shape.join(" ") + " is the shape"
    #call createShape
    #while shapes bottom hasn't reached column move piece
      #callMoveColumn
  end

  def movePiece()
    #while loop
  end


  #return shape
  def createShape()
    return @@shapeStorage["squareShape"]
    #create square shape but should create shapes based off of a random num
    #look up shape info in shape Storage
    #after create shape call movePiece throwing shape as parameters
  end

  def moveRows()
  end

  def moveColumn()
  end

  def getCurrentRow()
  end

  def setPiece()
  end
end

=begin
 call code from here 
 instantiate class
 grid.startgame()
  
=end
myGrid = TetrisGrid.new(5,4)
myGrid.startGame()