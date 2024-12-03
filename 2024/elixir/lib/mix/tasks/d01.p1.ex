defmodule Mix.Tasks.D01.P1 do
  use Mix.Task

  import EverybodyCodes2024.Day01
  import EverybodyCodes2024.Input

  @shortdoc "Day 01 Part 1"
  def run(args) do
    input = get!("01", 1)

    if Enum.member?(args, "-b"),
      do: Benchee.run(%{part_1: fn -> input |> part1() end}),
      else:
        input
        |> part1()
        |> IO.inspect(label: "Part 1 Results")
  end
end
