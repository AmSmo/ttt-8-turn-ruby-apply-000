def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def input_to_index(user_input)
  return user_input.to_i - 1
  
end

def valid_move?(board, pos)
  if pos.between?(0,8)
    if position_taken?(board, pos)
      return false
    else 
      return true
    end
  else
    return false
  end
end

def position_taken?(board,move)
  if board[move] == " " || board[move] == "" || board[move] == NIL
    return FALSE
  else
    return TRUE
  end
end

def move(board, pos, char = "X")
  if valid_move?(board,pos)
    board[pos]=char
  else
    return FALSE
  end
end

# def turn
#   puts "Please enter 1-9:"
# end