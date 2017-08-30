def display_board (board)
rows = [" #{board[0]} | #{board[1]} | #{board[2]} ","-----------"," #{board[3]} | #{board[4]} | #{board[5]} ","-----------"," #{board[6]} | #{board[7]} | #{board[8]} "]
  puts rows[0]
  puts rows[1]
  puts rows[2]
  puts rows[3]
  puts rows[4]
end

def position_taken? (board, index)

  if board[index] == " " || board[index] == nil || board[index] == ""
    return false
  else
    return true
  end
end


def valid_move? (board, index)

  if position_taken?(board,index) == false && index.between?(0,8)
    return true
  else
    return false
  end

end

def input_to_index(user_input)
  integer = "#{user_input}".to_i
  integer - 1
end

def move(board, index, value = "X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index) == false
    puts "Invalid entry. Please enter a number from 1-9."
    turn(board)
  else
    move(board, index, value= "X")
    display_board(board)
  end
end
