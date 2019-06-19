defmodule Mumbling do

  def accum(s) do
    s
    |> String.graphemes()
    |> Enum.with_index(1)
    |> Enum.map_join("-",fn {x,y} -> String.duplicate(x,y) |> String.capitalize() end)
  end

end
