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

  # ==== ➤ EXERCISE: Functions-2 (Pag. 45) ====

    def fizzbuzz_cond(a, b, c) do
    cond do
      a == 0 && b == 0 -> "FizzBuzz"
      a == 0 -> "Fizz"
      b == 0 -> "Buzz"
      c -> c
    end
  end

  def fizzbuzz_case(patt) do
    case patt do
      {0, 0, _} -> "FizzBuzz"
      {0, _, _} -> "Fizz"
      {_, 0, _} -> "Buzz"
      {_, _, c} when c != 0 -> c
    end
  end

  def fizzbuzz_pattern(0, 0, _), do: "FizzBuzz"
  def fizzbuzz_pattern(0, _, _), do: "Fizz"
  def fizzbuzz_pattern(_, 0, _), do: "Buzz"
  def fizzbuzz_pattern(_, _, _), do: "Whistle"

  # fizzbuzz = fn
  #   0, 0, _c -> "FizzBuzz"
  #   0, _, _c -> "Fizz"
  #   _, 0, _c -> "Buzz"
  #   _, _, c -> c
  # end

  # fz2 = fn n -> fizzbuzz.(rem(n, 3), rem(n, 5), n) end

  # ==== ➤ EXERCISE: Functions-4 (Pag. 47) ====

  def named_prefix(str1) do
    fn str2 -> "#{str1} #{str2}" end
  end

  # prefix = fn str -> (fn str2 -> "#{str} #{str2}" end) end
end
