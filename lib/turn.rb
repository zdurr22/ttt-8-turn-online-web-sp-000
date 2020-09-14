board = [" "," "," "," "," "," "," "," "," "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(array, index, value="X")
  array[index] = value
end

def valid_move?(board, index)
  if position_taken?(board, index) == true
    false
  elsif index.between?(0, 8) == true
    true
  elsif index.between?(0, 8) == false
    false
  end
end
def position_taken?(board, index)
  if board[0] == " "
    false
  elsif board[0] == ""
    false
  elsif board[0] == nil
    false
  elsif board[0] == "X" || board[0] == "O"
    true
  end
end
