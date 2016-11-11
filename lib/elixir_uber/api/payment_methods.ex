defmodule ElixirUber.API.PaymentMethods do
  import ElixirUber.API.Base
  import ElixirUber.Parser

  @doc """
  Fetch a `%ElixirUber.Model.PaymentMethod` representing a Payment methods.
  """

  def payment_methods(token \\ :global) do
    get("/payment_methods", token) |> parse_payment_methods
  end

end
