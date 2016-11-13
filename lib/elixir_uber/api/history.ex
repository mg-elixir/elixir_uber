defmodule ElixirUber.API.History do
  import ElixirUber.API.Base
  import ElixirUber.Parser

  @doc """
  Fetch a `%ElixirUber.Model.History` representing a history.
  By default retrieves 5 history items 
  """
  def history(token \\ :global) do
    get("/history", token) |> parse_history
  end
  @doc """
  Fetch a `%ElixirUber.Model.History` representing a history.
  For pagination you can pass limit and offset params, :limit max value is 50, you can use :count field to get full history items count 
  """
  def history(limit, offset, token \\ :global) do
    get("/history", token, [['limit', to_string(limit)], ['offset', to_string(offset)]]) |> parse_history
  end
end
