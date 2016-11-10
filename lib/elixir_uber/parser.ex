defmodule ElixirUber.Parser do

  def parse_user(object) do
  	#data = for {key, val} <- object, into: %{}, do: {String.to_atom(key), val}
    struct(ElixirUber.Model.User, object)
  end

  def parse_history(object) do
  	#data = for {key, val} <- object, into: %{}, do: {String.to_atom(key), val}
    struct(ElixirUber.Model.History, object)
  end

end