defmodule DayTwoPartOneTest do
    use ExUnit.Case

    test "with empty input, return 0" do
        assert DayTwo.PartOne.solve("") == 0
    end

    test "with single row, return correct value" do
        assert DayTwo.PartOne.solve("5\t1\t9\t5") == 8
    end

    test "with single row, and backwards order, return correct" do
        assert DayTwo.PartOne.solve("5\t9\t5\t1") == 8
    end

    test "given two rows, do the thing" do
        assert DayTwo.PartOne.solve("5\t1\t9\t1\n7\t5\t3") == 12
    end
end