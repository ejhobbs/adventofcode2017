defmodule Adventofcode2017 do
  def solve(day,year,mod,:first) do
    {:ok, input} = AdventOfCodeHelper.get_input(year,day)
    mod.solve(input)
      |> IO.write
  end
  def solve(day,year,mod,:second) do
    {:ok, input} = AdventOfCodeHelper.get_input(year,day)
    mod.solve2(input)
      |> IO.write
  end
end
