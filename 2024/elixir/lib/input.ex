defmodule EverybodyCodes2024.Input do
  def get!(day, part) do
    File.read!("inputs/#{day}_#{part}.txt")
  end
end
