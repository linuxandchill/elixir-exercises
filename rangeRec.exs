defmodule Ranger do 
  @moduledoc "a function that takes 2 ints and returns numbers between"
  def ranger(from, to) when from > to do 
    []
  end

  def ranger(from, to) do
    [from | ranger(from + 1, to)]
  end


  def rangy(from, to) do 
    rangy(from, to, [])
  end

  def rangy(from, to, result) when from > to do
    result
  end

  def rangy(from, to, result) do
    rangy(from, to - 1, [ to | result])
  end

end
