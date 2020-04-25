defmodule SixthChapter do
  # ===== ➤ EXERCISE: ModulesAndFunctions-1 (Pag. 55) ======
    def double(n), do: n * 2
    def triple(n), do: n * 3

    def factorial(0), do: 1
    def factorial(n) when is_integer(n) and n > 0 do
      n * factorial(n-1)
    end

  # ===== ➤ EXERCISE: ModulesAndFunctions-2 (Pag. 55) ======
    # Solved in the iex environment

  # ===== ➤ EXERCISE: ModulesAndFunctions-3 (Pag. 55) ======
    @spec quadruple(number) :: number
    def quadruple(val), do: double(double(val))

  # ===== ➤ EXERCISE: ModulesAndFunctions-4 (Pag. 57) ======
    def sum(1), do: 1
    def sum(n), do: n + sum(n - 1)

  # ===== ➤ EXERCISE: ModulesAndFunctions-5 (Pag. 57) ======
    def gcd(x, 0), do: x
    def gcd(x, y), do: gcd(y, rem(x,y))
end
