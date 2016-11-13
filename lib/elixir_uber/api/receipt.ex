defmodule ElixirUber.API.Receipt do
  import ElixirUber.API.Base
  import ElixirUber.Parser
  @doc """
  Fetch a `%ElixirUber.Model.Receipt` representing a detailed ride receipt.
  request_id is a uniq request UID.
  This method needs additional scope.
  """

  def receipt(request_id, token \\ :global) do
    get("/requests/#{request_id}/receipt", token) |> parse_receipt
  end

end
