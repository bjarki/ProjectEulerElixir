# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

IO.puts "Hello world"

defmodule EulerOne do
  def run(limit) do
    1..(limit - 1) 
    |> Enum.filter(fn x -> is_multible(x) end) 
    |> Enum.sum
    |> IO.puts
  end

  defp is_multible(x) do
    # rem(x, 3) == 0 || rem(x, 5) == 0
    is_multible_of_3(x) || is_multible_of_5(x)
  end

  defp is_multible_of_3(x) do
    rem(x, 3) == 0
  end

  defp is_multible_of_5(x) do
    rem(x, 5) == 0
  end

end

EulerOne.run(1000)

