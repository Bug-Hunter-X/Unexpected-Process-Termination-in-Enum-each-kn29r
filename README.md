# Elixir Enum.each Pitfall: Unexpected Process Termination

This repository demonstrates a common error in Elixir when using `Enum.each` and attempting to terminate the process prematurely.

The `bug.ex` file shows the problematic code which uses `Process.exit` inside the `Enum.each` function.  This leads to the unexpected termination of the process upon encountering the condition in the `if` statement. 

The `bugSolution.ex` file offers a corrected approach using `Enum.reduce` for a robust solution.

## How to Reproduce

1. Clone this repository.
2. Navigate to the repository's root directory.
3. Run `elixir bug.ex`. Observe the premature termination of the process.
4. Run `elixir bugSolution.ex`. Observe that all elements are processed and printed without unexpected termination.