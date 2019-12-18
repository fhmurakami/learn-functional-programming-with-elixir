# Create a function that returns Tic-Tac-Toe game winners. You can represent the board with a tuple of nine elements, where each group od three items is a row. the return of the function should be a tuple. When we have a winner, the first element should be the atom :winner, and the second should be the player. When we have no winner, the tuple should contain one item that is the atom :no_winner. It should work like this:
  # TicTacToe.winner({                TicTacToe.winner({
  #   :x, :o, :x,                       :x, :o, :x,
  #   :o, :x, :o,                       :o, :x, :o,
  #   :o, :o, :x                        :o, :x, :0
  # })                                })
  # => {:winner, :x}                  => {:no_winner}

defmodule TicTacToe do
  def winner({
    x, x, x,
    _, _, _,
    _, _, _
  }), do: {:winner, x}

  def winner({
    _, _, _,
    x, x, x,
    _, _, _
  }), do: {:winner, x}

  def winner({
    _, _, _,
    _, _, _,
    x, x, x
  }), do: {:winner, x}

  def winner({
    x, _, _,
    x, _, _,
    x, _, _
  }), do: {:winner, x}

  def winner({
    _, x, _,
    _, x, _,
    _, x, _
  }), do: {:winner, x}

  def winner({
    _, _, x,
    _, _, x,
    _, _, x
  }), do: {:winner, x}

  def winner({
    x, _, _,
    _, x, _,
    _, _, x
  }), do: {:winner, x}

  def winner({
    _, _, x,
    _, x, _,
    x, _, _
  }), do: {:winner, x}

  def winner(_board), do: :no_winner
end
