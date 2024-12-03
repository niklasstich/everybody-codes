defmodule Mix.Tasks.D01.P3 do
  use Mix.Task

  import EverybodyCodes2024.Day01
  import EverybodyCodes2024.Input

  @shortdoc "Day 01 Part 3"
  def run(args) do
    input = get!("01", 3)

    if Enum.member?(args, "-b"),
      do: Benchee.run(%{part_3: fn -> input |> part3() end}),
      else:
        input
        |> part3()
        |> IO.inspect(label: "Part 3 Results")
  end
end
