```elixir
list = [1, 2, 3, 4, 5]

Enum.reduce(list, [], fn x, acc ->
  if x == 3 do
    # Handle the condition without terminating the process
    IO.puts("Skipping 3")
    acc
  else
    IO.puts(x)
    [x | acc]
  end
end)
```