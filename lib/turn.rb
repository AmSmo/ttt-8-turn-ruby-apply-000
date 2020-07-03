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
  move = input_to_index(pos)
  if move.between?(0,8)
    if position_taken?(board, move)
      if board[move] == " " || board[move] == "" || board[move] == NIL
        return False
      else
        return True
      end
    end
  else 
    return FALSE
  end
end