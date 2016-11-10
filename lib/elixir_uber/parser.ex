defmodule ElixirUber.Parser do

  def parse_user(object) do
  	data = for {key, val} <- object, into: %{}, do: {String.to_atom(key), val}
    struct(ElixirUber.Model.User, data)
  end

end