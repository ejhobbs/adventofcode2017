defmodule DayFour do
    defmodule PartOne do
        def solve(input) do
            String.split(input,"\n", trim: true)
            |> Enum.map(&(check_valid(&1)))
            |> Enum.count(&(&1 == :valid))
        end

        defp check_valid([word | words]) do
            case process_password([word | words]) do
                :invalid -> :invalid
                :valid -> check_valid(words)
            end
        end

        defp check_valid([]), do: :valid

        defp check_valid(password) do
            String.split(password, " ", trim: true)
            |> check_valid
        end

        defp process_password([a | xs]), do: process_password(a, xs)

        defp process_password(word, [word | _words]), do: :invalid

        defp process_password(word, [otherWord | words]), do: process_password(word, words)

        defp process_password(word, word), do: :invalid

        defp process_password(_word, _notWord), do: :valid
    end
end