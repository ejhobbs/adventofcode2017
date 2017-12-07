defmodule DayFourPartTwoTest do
    use ExUnit.Case

    test "no anagrams return 1" do 
        assert DayFour.PartTwo.solve("abcde fghij") == 1
    end

    test "one anagram return 0" do 
        assert DayFour.PartTwo.solve("abcde xyz ecdab") == 0
    end

    test "no anagrams but same letters should be valid" do 
        assert DayFour.PartTwo.solve("a ab abc abd abf abj") == 1
    end

    test "literally like so many anagrams" do 
        assert DayFour.PartTwo.solve("oiii ioii iioi iiio") == 0
    end
end