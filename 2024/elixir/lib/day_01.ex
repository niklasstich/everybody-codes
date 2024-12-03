defmodule EverybodyCodes2024.Day01 do

  def bonus(len, xs) when xs == len - 1, do: 0
  def bonus(len, xs), do: (len - xs - 1) * (len - xs)

  def value(n) when is_number(n) do
    case n do
      ?A -> 0
      ?x -> 0
      _ -> (n - ?A) * 2 - 1
    end
  end

  def value(list) when is_list(list) do
    xs = Enum.count(list, & &1 == ?x)
    len = Enum.count(list)
    (list |> Enum.map(&value/1) |> Enum.sum()) + bonus(len, xs)
  end

  def part1(args) do
    args |> to_charlist() |> Enum.map(&value/1) |> Enum.sum()
  end

  def part2(args) do
    args |> to_charlist() |> Enum.chunk_every(2) |> Enum.map(&value/1) |> Enum.sum()
  end

  def part3(args) do
    args |> to_charlist() |> Enum.chunk_every(3) |> Enum.map(&value/1) |> Enum.sum()
  end
end
