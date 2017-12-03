defmodule DayOneTest do
    use ExUnit.Case

    test "empty list returns 0" do
        assert DayOne.solve("") == 0
    end

    test "single item returns 0" do
        assert DayOne.solve("1") == 0
    end

    test "small list with no matches returns 0" do
         assert DayOne.solve("123") == 0
     end

    test "2 item list with match returns correct total" do
         assert DayOne.solve("11") == 1
    end

    test "first example returns expected value" do
        assert DayOne.solve("1122") == 3
    end

    test "if start and end match, with others, return correct value" do
        assert DayOne.solve("12241") == 3
    end

    test "4 ones returns 4" do
        assert DayOne.solve("1111")
    end

    test "longer input with only head/tail match return correct value" do
        assert DayOne.solve("91212129")
    end
end