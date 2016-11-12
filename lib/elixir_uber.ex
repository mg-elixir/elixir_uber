defmodule ElixirUber do
  @moduledoc """
  Provides access to the Uber API.
  """

  @doc """
  Initialises and configures ElixirUber with a `client_id`,
  `client_secret` and `redirect_uri`. If you're not doing
  anything particularly interesting here, it's better to
  set them as environment variables and use `ElixirUber.configure/0`

  ## Example
      iex(1)> ElixirUber.configure("XXXX", "XXXX", "localhost:4000")
      {:ok, []}
  """
  defdelegate configure(client_id, client_secret, redirect_uri), to: ElixirUber.Config, as: :configure

  @doc """
  Initialises ElixirUber with system environment variables.
  For this to work, set `UBER_CLIENT_ID`, `UBER_CLIENT_SECRET`
  and `UBER_REDIRECT_URI`.

  ## Example
      UBER_CLIENT_ID=XXXX UBER_CLIENT_SECRET=XXXX UBER_REDIRECT_URI=localhost
      iex(1)> ElixirUber.configure
      {:ok, []}
  """
  defdelegate configure, to: ElixirUber.Config, as: :configure

  @doc """
  Sets a global user authentication token, this is useful for scenarios
  where your app will only ever make requests on behalf of one user at
  a time.
  """
  defdelegate configure(scope, token), to: ElixirUber.Config, as: :configure
  
  @doc """
  Returns the url you will need to redirect a user to for them to authorise your
  app with their Uber account. When they log in there, you will need to
  implement a way to catch the code in the request url (they will be redirected back
  to your `UBER_REDIRECT_URI`).

  """
  defdelegate authorize_url!, to: ElixirUber.OAuthStrategy, as: :authorize_url!

  @doc """
  Returns the url to redirect a user to when authorising your app to use their
  account. Takes a list of permissions scopes as `atom` to request from Uber.

  Available scopes: :profile, :places, :ride_widgets, :history_lite, :history

  """
  defdelegate authorize_url!(scope), to: ElixirUber.OAuthStrategy, as: :authorize_url!

  @doc """
  Takes a `keyword list` containing the code returned from Uber in the redirect after
  login and returns a `{:ok, access_token}` for making authenticated requests.
  If you pass an incorrect code, it will return you an `{:error, reason}`
  
  """
  def get_token!(code) do
    case ElixirUber.OAuthStrategy.get_token!(code) do
      %{token: %{other_params: %{"code" => 400, "error_message" => error_message}}} ->
        {:error, error_message}
      %{token: %{access_token: access_token}} ->
        {:ok, access_token}
      _ ->
        {:error, "Something went wrong fetching the token..."}
    end
  end


  ## ---------- Implemented API methods

  @doc """
  Takes a token and returns a `%ElixirUber.Model.Me` with basic user info
  """
  defdelegate me(token), to: ElixirUber.API.Me, as: :me
  @doc """
  Takes a token and returns a `%ElixirUber.Model.History` with a rides history.
  """
  defdelegate history(token), to: ElixirUber.API.History, as: :history
  @doc """
  Takes a token and returns a `%ElixirUber.Model.PaymentMethods` with available payment methods.
  """
  defdelegate payment_methods(token), to: ElixirUber.API.PaymentMethods, as: :payment_methods
  @doc """
  Takes a place_id, token and returns a `%ElixirUber.Model.Places` with favorite work and home addresses.
  place_id parameter should be 'work' or 'home'
  """
  defdelegate places(place_id, token), to: ElixirUber.API.Places, as: :places
end