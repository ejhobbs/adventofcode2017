defmodule DayFour do
    defp check_valid([word | words]) do
        case process_password([word | words]) do
            :invalid -> :invalid
            :valid -> check_valid(words)
        end
    end

    defp check_valid([]), do: :valid

    def valid?(password) do
        String.split(password, " ", trim: true)
        |> check_valid
    end

    defp process_password([a | xs]), do: process_password(a, xs)

    defp process_password(word, [word | _words]), do: :invalid

    defp process_password(word, [_otherWord | words]), do: process_password(word, words)

    defp process_password(word, word), do: :invalid

    defp process_password(_word, _notWord), do: :valid

    defmodule PartOne do
        def solve(input) do
            String.split(input,"\n", trim: true)
            |> Enum.map(&(DayFour.valid?(&1)))
            |> Enum.count(&(&1 == :valid))
        end
    end

    defmodule PartTwo do
        def solve(input) do
            String.split(input,"\n", trim: true)
            |> Enum.map(&(sort_words(&1)))
            |> Enum.map(&(DayFour.valid?(&1)))
            |> Enum.count(&(&1 == :valid))
        end

        defp sort_words(input) do
            String.split(input," ", trim: true)
            |> Enum.map(&(sort_word(&1)))
            |> Enum.join(" ")
        end

        defp sort_word(word) do
            String.split(word,"", trim: true)
            |> Enum.sort
            |> Enum.join("")
        end
    end
end