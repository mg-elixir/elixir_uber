defmodule ElixirUber.API.Request do
  import ElixirUber.API.Base
  import ElixirUber.Parser
  @doc """
  Fetch a `%ElixirUber.Model.Request` representing a detailed request.
  request_id is a uniq request UID
  """

  def request(request_id, token \\ :global) do
    get("/requests/#{request_id}", token) |> parse_request
  end

end
