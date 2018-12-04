class TicTacToe
  def initialize (new_board=nil)
    @board = [" "," "," "," "," "," "," "," "," "]
  end
  
  def board
    @board
  end
  
  def board=(new_board)
    @board = new_board
  end
  
  WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # bottom row
  [0,3,6],# left col
  [1,4,7], #center col
  [2,5,8], # right col
  [0,4,8], # TL-BR diag 
  [6,4,2], # BL-TR diag
  # ETC, an array for each win combination
]
def display_board
  puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
  puts "-----------"
  puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
  puts "-----------"
  puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
end

end
def input_to_index(user_input)
  user_input.to_i - 1
end

class TicTacToe
  def initialize (new_board=nil)
    @board = [" "," "," "," "," "," "," "," "," "]
  end
  
  def board
    @board
  end
  
  def board=(new_board)
    @board = new_board
  end
  
  WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # bottom row
  [0,3,6],# left col
  [1,4,7], #center col
  [2,5,8], # right col
  [0,4,8], # TL-BR diag 
  [6,4,2], # BL-TR diag
  # ETC, an array for each win combination
]
def display_board
  puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
  puts "-----------"
  puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
  puts "-----------"
  puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end



end
