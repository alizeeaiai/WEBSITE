defmodule Consecutive do
  def to_list(a) do
    b = String.split(a,"",trim: true)
    for i <- b, do: String.to_integer(i)
    consecutive(list,0)
  end
  def consecutive([a,b,c,d,e | tail],max) when a < b and b < c and c < d and d < e and a * 10000 + b * 1000 + c * 100 + d * 10 + e > max do
    sum = a * 10000 + b * 1000 + c * 100 + d * 10 + e
    consecutive([b,c,d,e | tail],sum)
  end
  def consecutive([_ | tail,max]) do
    consecutive(tail,max)
  end
  def consecutive([],sum) do
    sum
  end
end
