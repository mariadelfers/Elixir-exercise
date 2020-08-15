defmodule Bowling do
  
  def score([]), do: 0 
  
  def score([[10,nil]|tail]) do
    [a,b] = hd(tail)
    10 + a + b + score(tail)
  end
  # def score([[a,b]|[[c|_]|_]] = tail) when a + b == 10
  #   a + b + c + score(tail)
  # end
  def score([[a,b]|tail]) when a + b == 10
    a + b hd(hd(tail)) + score(tail)
  end

  def score([[a,b]|tail]) do
    a + b + score(tail)
  end

  def score([[a,b,nil]|tail]) do
    a + b + score(tail)
  end

end
