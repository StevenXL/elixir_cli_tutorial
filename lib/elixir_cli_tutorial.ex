defmodule ElixirCliTutorial do
  def main(args) do
    args |> parse_args |> process
  end

  def process([]) do
    IO.puts "No arguments given"
  end

  def process([{:out, output}]) do
    IO.puts output
  end

  def parse_args(args) do
    {options, _, _} = OptionParser.parse(args, switches: [out: :string])
    options
  end
end
