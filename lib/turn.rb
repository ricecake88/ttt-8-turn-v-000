def display_board(board)
  print " #{board[0]} | #{board[1]} | #{board[2]} \n"
  print "-----------\n"
  print " #{board[3]} | #{board[4]} | #{board[5]} \n"  
  print "-----------\n"
  print " #{board[6]} | #{board[7]} | #{board[8]} \n"  
end

def valid_move?(board, index)
  if (board[index] == "X" || board[index] == "O" || index > 8 || index < 0 || position_taken?(board, index))
    return false
<<<<<<< HEAD
  else
=======
  elsif (!position_taken?(board,index))
>>>>>>> e1945ca748556b9dcd37c1747033af424a5aa73a
    return true
  end
end

def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    return false
  else
    return true
  end
end

def move(board, index, value="X")
  if (valid_move?(board, index))
    board[index] = value
  end
end

def input_to_index(number)
  number.to_i-1
end

def turn(board)
  puts "Please enter 1-9:"
<<<<<<< HEAD
  num = input_to_index(gets.strip)
=======
  index = gets.strip
  num = input_to_index(index)
>>>>>>> e1945ca748556b9dcd37c1747033af424a5aa73a
  if (num < 9 && num >= 0)
      move(board, num)
      display_board(board)
  else turn(board)
  end
end