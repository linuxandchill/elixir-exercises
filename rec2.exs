defmodule Fact do 
<<<<<<< HEAD
  ##def fac(num) when num <= 1, do: 1
  #not tail-call optimized
  ##def fac(num), do: num * fac(num - 1) 
  
  def fac(num, acc \\ 1)
  def fac(0, acc), do: acc
  def fac(num, acc) do
    fac(num - 1, num * acc)
=======

  #not tail-call optimized
  #def fac(num) when num <= 1, do: 1
  #def fac(num), do: num * fac(num - 1) 
  
  def fac(num, acc \\ 1)

  def fac(0, acc) do 
    acc
  end

  def fac(num, acc) do 
    fac(num-1, acc * num )
>>>>>>> 6a14115ec01a570fb8ca61e447325afc7c6e43a2
  end

  ##finishes process @ (1,6)
  #def fac(1, acc), do: acc
  #would be same as fac(0,6), do: acc


  #fac(3, \\1)  
  #fac(3 - 1 , 3 * 1 )
  #   2, 3
  #fac(2 - 1, 2 * 3)
  #   1, 6
  #fac(1-1, 1 * 6)
  #   0, 6
  
  @doc """
  adds the numbers in the list, returns sum
  """
  def sum(list), do: sum(list, 0)
  defp sum([], total), do: total
  defp sum([head|tail], total) do
    sum(tail, head + total)
  end

  @doc """
  loops over all items, applies function, returns :done
  """
  def each([], _func), do: :done
  def each([head|tail], func) do
    func.(head)
    each(tail, func)
  end

  @doc """
  counts how many items are in the list
  """
  def len(list), do: len(list, 0)
  def len([], count), do: count
  def len([_head|tail], count) do
    len(tail, count + 1)
  end

  @doc """
  loops over all items, applies function, returns new list
  """
  def map(list, func) do
     map(list, func, [])
  end

  def map([], _func, acc) do
    :lists.reverse(acc)
  end

  def map([head|tail], func, acc) do
    map(tail, func, [func.(head) | acc])
  end
end
