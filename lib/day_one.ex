defmodule DayOne do
    def compare(a,a) do
        a
    end

    def compare(_,_) do
        0
    end

    defmodule PartOne do
        def solve([],total) do
            total
        end
        
        def solve([_x],total) do 
            total
        end

        def solve([x,y],total) do
            total + DayOne.compare(x,y)
        end

        def solve([x,y|xs],total) do
            solve([y|xs], total + DayOne.compare(x,y))
        end

        def solve(input) do
            input = String.split(input,"",trim: true)
                |> Enum.map(&(String.to_integer(&1)))
            if Enum.count(input) > 2 do
                solve(input,DayOne.compare(Enum.at(input,0),Enum.at(input,-1)))
            else
                solve(input,0)
            end
        end
    end

    defmodule PartTwo do
        def solve(input) do 
            0
        end
    end
end