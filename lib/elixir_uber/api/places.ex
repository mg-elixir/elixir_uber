defmodule ElixirUber.API.Places do
  import ElixirUber.API.Base
  import ElixirUber.Parser
  @doc """
  Fetch a `%ElixirUber.Model.Places` representing a places list.
  place_id should be 'home' or 'work'
  """

  def places(place_id, token \\ :global) do
    get("/places/#{place_id}", token) |> parse_places
  end

end
