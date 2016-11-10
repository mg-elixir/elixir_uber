# ElixirUber

Uber client library for Elixir. It uses <a href="https://github.com/scrogson/oauth2" target="_blank">oauth2</a> to call Uber's REST API.

It only supports very limited set of functions yet. Refer to <a href="https://github.com/maratgaliev/elixir_uber/blob/master/lib/elixir_uber.ex" target="_blank">lib/elixir_uber.ex</a> for available functions and examples.

## Installation

Package can be installed as:

  1. Add `elixir_uber` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:elixir_uber, "~> 0.0.1"}]
    end
    ```

  2. Ensure `elixir_uber` is started before your application:

    ```elixir
    def application do
      [applications: [:elixir_uber]]
    end
    ```
  3. Configuration
    
    ```elixir
    # Configure client
    ElixirUber.configure("UBER_CLIENT_ID", "UBER_CLIENT_SECRET", "CALLBACK_URL")
    # Call authorize_url! method
    ElixirUber.authorize_url!
    # Redirect to the url, and get code
    client = ElixirUber.get_token!(code: "CODE")
    # Get user object
    user = ElixirUber.me(client)
    ```

## Documentation
[Basic docs on hexdocs site](https://hexdocs.pm/elixir_uber/0.0.1/readme.html)

## Status

It's very early version, most of API functions are missing.

## Changelog

### 0.0.1
- Basic current user info
- Update dependencies
