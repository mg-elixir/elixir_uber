defmodule ElixirUber.API.Me do
  import ElixirUber.Parser

  @doc """
  Fetch a `%ElixirUber.Model.User` representing a user.
  Takes a user id and an optional token. If using a token (or `:global`),
  `:self` can be passed as a user id to return the user associated with the token.
  """

  def me(client) do
    OAuth2.Client.get!(client, "/v1/me").body |> parse_user
  end

end
