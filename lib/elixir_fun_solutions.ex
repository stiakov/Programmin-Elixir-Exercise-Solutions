defmodule ElixirFunSolutions do
  @moduledoc """
  Documentation for `ElixirFunSolutions`.
  """

  # ==== EXERCISE: Functions-1 (Pag. 43) ====

  def list_concat(list1, list2) do
    list1 ++ list2
  end

  # list_concat = &(&1 ++ &2)

  def sum(a, b, c) do
    a + b + c
  end

  # sum = &(&1 + &2 + &3)

  def pair_tuple_to_list(tuple) do
    tuple |> Tuple.to_list()
  end

  # pair_tuple = &(Tuple.to_list(&1))

  # ==== EXERCISE: Functions-2 (Pag. 45) ====

    def fizzbuxx(a, b, c) do
      cond do
        a == 0 && b == 0 -> "FizzBuzz"
        a == 0 -> "Fizz"
        b == 0 -> "Buzz"
        c -> c
      end
    end

  fizzbuzz = fn
    0, 0, _c -> "FizzBuzz"
    0, _, _c -> "Fizz"
    _, 0, _c -> "Buzz"
    _, _, c -> c
  end

  fz2 = fn n -> fizzbuzz.(rem(n, 3), rem(n, 5), n) end
end
