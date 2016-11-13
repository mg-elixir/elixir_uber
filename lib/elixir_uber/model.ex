defmodule ElixirUber.Model.ClientConfig do
  defstruct client_id: nil, client_secret: nil, redirect_uri: nil, access_token: nil
end

defmodule ElixirUber.Model.User do
  defstruct email: nil, first_name: nil, last_name: nil, mobile_verified: nil, picture: nil, promo_code: nil, rider_id: nil, uuid: nil
end

defmodule ElixirUber.Model.History do
  defstruct count: nil, history: nil, limit: nil, offset: nil
end

defmodule ElixirUber.Model.HistoryItem do
  defstruct distance: nil, end_time: nil, product_id: nil, request_id: nil, request_time: nil, start_city: nil, start_time: nil, status: nil
end

defmodule ElixirUber.Model.StartCity do
  defstruct display_name: nil, latitude: nil, longitude: nil
end

defmodule ElixirUber.Model.PaymentMethods do
  defstruct payment_methods: nil, last_used: nil
end

defmodule ElixirUber.Model.PaymentMethod do
  defstruct payment_method_id: nil, type: nil, description: nil
end

defmodule ElixirUber.Model.Place do
  defstruct address: nil
end

defmodule ElixirUber.Model.Products do
  defstruct products: nil
end

defmodule ElixirUber.Model.Product do
  defstruct upfront_fare_enabled: nil, capacity: nil, product_id: nil, image: nil, cash_enabled: nil, shared: nil, short_description: nil, display_name: nil, product_group: nil, description: nil
end

defmodule ElixirUber.Model.Request do
  defstruct driver: nil, location: nil, product_id: nil, request_id: nil, shared: nil, status: nil, vehicle: nil
end

defmodule ElixirUber.Model.Receipt do
  defstruct currency_code: nil, distance: nil, distance_label: nil, duration: nil, request_id: nil, subtotal: nil, total_charged: nil, total_fare: nil, total_owed: nil
end