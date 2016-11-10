defmodule ElixirUber.Model.ClientConfig do
  defstruct client_id: nil, client_secret: nil, redirect_uri: nil, access_token: nil
end

defmodule ElixirUber.Model.User do
  defstruct email: nil, first_name: nil, last_name: nil, mobile_verified: nil, picture: nil, promo_code: nil, rider_id: nil, uuid: nil
end
