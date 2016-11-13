defmodule ElixirUber.API.Products do
  import ElixirUber.API.Base
  import ElixirUber.Parser
  @doc """
  Fetch a `%ElixirUber.Model.Products` representing a products list.
  Takes a latitude and longitude as params. 
  """

  def products(latitude, longitude, token \\ :global) do
    get("/products", token, [['latitude', to_string(latitude)], ['longitude', to_string(longitude)]]) |> parse_products
  end

end
