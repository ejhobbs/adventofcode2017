defmodule DayFourPartOneTest do
    use ExUnit.Case

    test "empty string returns no valid" do
        assert DayFour.PartOne.solve("") == 0
    end

    test "single valid passphrase returns 1" do
        assert DayFour.PartOne.solve("aa bb") == 1
    end

    test "single invalid passphrase returns 0" do
        assert DayFour.PartOne.solve("aa aa") == 0
    end

    test "single long valid password returns 1" do
        assert DayFour.PartOne.solve("aa bb cc dd ee") == 1
    end

    test "single long invalid password returns 0" do 
        assert DayFour.PartOne.solve("aa bb cc dd aa") == 0
    end

    test "nearly match doesn't cause invalid" do 
        assert DayFour.PartOne.solve("aa bb cc dd aaa") == 1
    end

    test "one valid one invalid returns one" do 
        assert DayFour.PartOne.solve("aa bb\ncc cc") == 1
    end
end