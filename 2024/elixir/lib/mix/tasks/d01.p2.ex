defmodule Mix.Tasks.D01.P2 do
  use Mix.Task

  import EverybodyCodes2024.Day01
  import EverybodyCodes2024.Input

  @shortdoc "Day 01 Part 2"
  def run(args) do
    input = get!("01", 2)

    if Enum.member?(args, "-b"),
      do: Benchee.run(%{part_2: fn -> input |> part2() end}),
      else:
        input
        |> part2()
        |> IO.inspect(label: "Part 2 Results")
  end
end
