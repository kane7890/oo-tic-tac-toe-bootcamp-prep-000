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

def move(index, current_player)
  @board[index] = current_player
end


def position_taken?(location)
  @board[location] != " " && board[location] != ""
end

def valid_move?(index)
  index.between?(0,8) && !position_taken?(@board, index)
end

def turn
    puts "Please enter 1-9:"
    input = gets.strip

#   puts "moving " + index.to_s
    index = input_to_index(input)
if valid_move?(@board, index)
#    puts "moving " + index.to_s
    currplay = current_player(@board)
    move(index, currplay)
    display_board(board)
else
# puts "What the fuck"
  turn(board)
end
end


# Define your play method below

def play(board)
 count = 0 
  while !over?(@board)
#    puts "Count = " + count.to_s
    turn(@board)
  count += 1
  end
  if draw?(@board)
    puts "Cat's Game!"
  else
    puts "Congratulations #{winner(@board)}!"
  end

    puts "Count = " + count.to_s
    turn(@board)
  count += 1
  end



def turn_count(board)
  counter = 0
  @board.each do |boardindex| 
    if boardindex == "X" || boardindex == "O"
      counter = counter + 1
    # puts "element #{counter} #{boardindex}"
    end
  end
  return (counter)
end

def current_player
  if turn_count(@board) % 2 == 0 
    return "X"
  else
    return "O"
  end
end

# Helper Method
def position_taken?(index)
  !(@board[index].nil? || @board[index] == " ")
end




end
