defmodule SplitStrings do
  def solution(str) do
    str
    |> String.to_charlist()
    |> Enum.chunk_every(2)
    |> Enum.map(fn [_,_] = pair -> to_string(pair)
    [_] = cici -> to_string(cici) <> "_" end)
  end
end
SplitStrings.solution("dfa")

