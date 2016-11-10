defmodule ElixirUber.API.Me do
  import ElixirUber.API.Base
  import ElixirUber.Parser
  @doc """
  Fetch a `%ElixirUber.Model.User` representing a user.
  """

  def me(token \\ :global) do
    get("/me", token) |> parse_user
  end

end
