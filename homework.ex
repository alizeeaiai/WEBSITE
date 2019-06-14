# defmodule Get_together do
#  def of(1), do: 1
#  def of(n) do
#    n + of(n-1)
#  end
# end

# IO.puts Get_together.of(3)

# # #Implement and run a function sum(n) that uses recursion to calculate the sum of the integers from 1 to n. You’ll need to write this function inside a module in a separate file. Then load up IEx, compile that file, and try your function.\

#  rabbit = fn
#    (0,0,_) -> "FizzBuzz"
#    (_,0,_) -> "fizz"
#    (_,_,a) -> a
#  end

#  IO.puts(rabbit.(1,23,3))

# # #   fn(0,0,0)
# # # if the first two are 0, return Fizzbuzz
# # if the second is 0, return Buzz
# # if otherwise, return the third argument

# rabbitRem = fn
#   {rem(10,3),rem(10,5),10} ->
# #   "sadss

# defmodule sumUp do
#   def Summer([from] | tail) do
#     [(from | Summer(tail))]
#   end

# def add_up1s
# do: Summer([from+1]) when from + 1 <= tail
# # end

# sum = fn a,b -> a + b end
# # sum.(1,3)
# # IO.puts(sum.(1,3))
# defmodule LookFor do
#   def f a,0 do
#     a
#   end
#   def f a,b do
#     f(b,rem(a,b))
#   end
# end
# IO.puts LookFor.f(10,3)

defmodule MyList do
  def mapsum([],value,func) do
    value
  end
  def mapsum([head | tail],value,func) do
    value = value + func.(head)
    mapsum(tail,value,func)
  end
end

IO.puts MyList.mapsum([1,5,3],0,&(&1 * &1))
