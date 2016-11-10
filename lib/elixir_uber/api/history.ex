defmodule ElixirUber.API.History do
  import ElixirUber.API.Base
  import ElixirUber.Parser

  @doc """
  Fetch a `%ElixirUber.Model.History` representing a history.
  """

  def history(token \\ :global) do
    get("/history", token) # |> parse_history
  end

end
