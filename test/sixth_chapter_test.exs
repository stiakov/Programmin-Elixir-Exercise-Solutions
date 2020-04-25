defmodule SixthChapterTest do
  use ExUnit.Case
  doctest SixthChapter

  # ===== ➤ EXERCISE: ModulesAndFunctions-1 (Pag. 55) ======
    test "Should triplicate a value" do
      assert SixthChapter.triple(3) == 9
    end
  # ===== ➤ EXERCISE: ModulesAndFunctions-2 (Pag. 55) ======
    # Solved in the iex environment

  # ===== ➤ EXERCISE: ModulesAndFunctions-3 (Pag. 55) ======
    test "Should quadruplicate a value" do
      assert SixthChapter.quadruple(3) == 12
    end
  # ===== ➤ EXERCISE: ModulesAndFunctions-4 (Pag. 57) ======
    test "Should use recursiveness sum" do
      assert SixthChapter.sum(6) == 21
    end

  # ===== ➤ EXERCISE: ModulesAndFunctions-5 (Pag. 57) ======
    test "Using recursiveness to find Greatest common divisor" do
      assert SixthChapter.gcd(45, 10) == 5
    end
end
