def display_board(board)
  puts """
     #{board[0]} | #{board[1]} | #{board[2]} 
     -----------
     #{board[3]} | #{board[4]} | #{board[5]} 
     -----------
     #{board[6]} | #{board[7]} | #{board[8]} 
  """
end

def valid_move?(board, index)
  if index.between?(0,8) && position_taken?(board, index) == false
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " "
    false
  else
    true
  end
end

def input_to_index(input)
  index = input.to_i - 1 # convert input to index
end

def move(board, index, char = 'X')
  board[index] = 'X'
end

def turn(board)
  puts "Please enter 1-9:" # ask for input
  input = gets.chomp # get input
  input_to_index(input)
  # # base case
  # if valid_move?(board, index) # if it's valid
  #   move
  # else
  #   # turn(board) # recursive gru meme
  # end
  
end