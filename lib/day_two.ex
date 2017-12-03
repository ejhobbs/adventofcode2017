defmodule DayTwo do
    defmodule PartOne do
        def solve(input) do
            input = String.split(input,"\n",trim: true)
            |> Enum.map(&(String.split(&1,"\t", trim: true)))
            |> Enum.map(&(list_to_int(&1)))
            calculate_checksum(input,0)
        end

        defp list_to_int(x) do
            Enum.map(x, &(String.to_integer(&1)))
        end

        defp calculate_checksum([],total) do
            total
        end

        defp calculate_checksum([x|xs],total) do
            calculate_checksum(xs,total+get_diff(x))
        end

        defp get_diff([]) do
            0
        end

        defp get_diff([a,b]) do
            abs(a-b)
        end

        defp get_diff(x) do
            Enum.max(x) - Enum.min(x)
        end
    end
end