defmodule ElixirFunSolutionsTest do
  use ExUnit.Case
  doctest ElixirFunSolutions

  # ===== EXERCISE: Functions-1 (Pag. 43) ======

    test "concat a list with list_concat/2" do
      l1 = [:a, :b]
      l2 = [:c, :d]
      assert ElixirFunSolutions.list_concat(l1, l2) == [:a, :b, :c, :d]
    end

    test "sum with three params" do
      assert ElixirFunSolutions.sum(1, 2, 3) == 6
    end

    test "Convert Tuple to List" do
      assert ElixirFunSolutions.pair_tuple_to_list({77, 88, 99}) == [77, 88, 99]
    end


  # ===== EXERCISE: Functions-2 (Pag. 45) ======
  #  @tag :skip

    test "FizzBuzz named function with condition" do
      assert ElixirFunSolutions.fizzbuzz_cond(0, 0, 1) == "FizzBuzz"
      assert ElixirFunSolutions.fizzbuzz_cond(0, 1, 1) == "Fizz"
      assert ElixirFunSolutions.fizzbuzz_cond(1, 0, 1) == "Buzz"
      assert ElixirFunSolutions.fizzbuzz_cond(1, 1, 42) == 42
    end

    test "FizzBuzz_Pattern named function with pattern matching" do
      assert ElixirFunSolutions.fizzbuzz_pattern(0, 0, 1) == "FizzBuzz"
      assert ElixirFunSolutions.fizzbuzz_pattern(0, 1, 1) == "Fizz"
      assert ElixirFunSolutions.fizzbuzz_pattern(1, 0, 1) == "Buzz"
      assert ElixirFunSolutions.fizzbuzz_pattern(1, 1, 42) == "Whistle"
    end

    test "FizzBuzz_case named function with pattern matching and case" do
      assert ElixirFunSolutions.fizzbuzz_case({0, 0, 1}) == "FizzBuzz"
      assert ElixirFunSolutions.fizzbuzz_case({0, 1, 1}) == "Fizz"
      assert ElixirFunSolutions.fizzbuzz_case({1, 0, 1}) == "Buzz"
      assert ElixirFunSolutions.fizzbuzz_case({1, 1, 42}) == 42
    end

  test "FizzBuzz anonymous function" do
    fizzbuzz = fn
      0, 0, _c -> "FizzBuzz"
      0, _, _c -> "Fizz"
      _, 0, _c -> "Buzz"
      _, _, c -> c
    end

    assert fizzbuzz.(0,1,1) == "Fizz"
    assert fizzbuzz.(1,0,1) == "Buzz"
    assert fizzbuzz.(0,0,1) == "FizzBuzz"
    assert fizzbuzz.(1,1,1) == 1
  end

  test "fizzbuzz anonymous fn with rem()" do
    fizzbuzz = fn
      0, 0, _c -> "FizzBuzz"
      0, _, _c -> "Fizz"
      _, 0, _c -> "Buzz"
      _, _, c -> c
    end

    fz2 = fn n -> fizzbuzz.(rem(n, 3), rem(n, 5), n) end

    assert 10..16 |> Enum.to_list |> Enum.map(fn(n) -> fz2.(n) end) == ["Buzz", 11, "Fizz", 13, 14, "FizzBuzz", 16]
  end

  # ==== ➤ EXERCISE: Functions-4 (Pag. 47) ====
    test "Testing prefix with nested function" do
      assert ElixirFunSolutions.named_prefix("Hola").("niño!") == "Hola niño!"
    end

  # ==== ➤ EXERCISE: Functions-5 (Pag. 50) ====
    test "Testing & operator to write shortcutted functions" do
      assert Enum.map [1, 2, 3, 4], &(&1 + 2) == [3, 4, 5, 6]
    end

end
