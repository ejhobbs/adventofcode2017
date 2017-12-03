defmodule Adventofcode2017 do
  def solve(day,year,mod,:first) do
    {:ok, input} = AdventOfCodeHelper.get_input(year,day)
    Module.concat([mod,PartOne]).solve(input)
      |> IO.write
  end
  def solve(day,year,mod,:second) do
    {:ok, input} = AdventOfCodeHelper.get_input(year,day)
    Module.concat([mod,PartTwo]).solve(input)
      |> IO.write
  end
end
