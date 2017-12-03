defmodule DayOne.PartTwoTest do
    use ExUnit.Case

    test "empty list returns 0" do
        assert DayOne.PartTwo.solve("") == 0
    end

    test "small list with no matches returns 0" do
         assert DayOne.PartTwo.solve("1221") == 0
     end

    test "2 item list with match returns correct total" do
         assert DayOne.PartTwo.solve("11") == 2 
    end

    test "first example returns expected value" do
        assert DayOne.PartTwo.solve("1212") == 6
    end

    test "longer string with one match returns correctly" do
        assert DayOne.PartTwo.solve("123425") == 4
    end

    test "idk one of their examples" do
        assert DayOne.PartTwo.solve("123123") == 12
    end

    test "last example" do
        assert DayOne.PartTwo.solve("12131415") == 4
    end
end
