defmodule Sort do
  def insert(element, []) do
    [element]
  end

  def insert(element, list) do
    insert(element, list, [])
  end

  def insert(element, [], acc) do
    [element|acc]
  end

  def insert(element, [head|tail], acc) when element <= head do
    tail++[head,element| acc]

  end

  def insert(element, [head|tail], acc) do
    insert(element, tail, [head|acc])
  end



end
