# ElixirUber

Uber Technologies Inc. (<a href="http://uber.com" target="_blank">http://uber.com</a>) client library for Elixir. It uses <a href="https://github.com/scrogson/oauth2" target="_blank">oauth2</a> to call Uber's REST API.
More info at <a href="https://developer.uber.com" target="_blank">https://developer.uber.com</a>.

For now it supports very limited set of functions. Refer to <a href="https://github.com/maratgaliev/elixir_uber/blob/master/lib/elixir_uber.ex" target="_blank">lib/elixir_uber.ex</a> for available functions and examples.

## Installation

Package can be installed as:

  1. Add `elixir_uber` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:elixir_uber, "~> 0.0.5"}]
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
    iex(4)> ElixirUber.configure("UBER_CLIENT_ID", "UBER_CLIENT_SECRET", "CALLBACK_URL")
    # Call authorize_url! method
    iex(4)> ElixirUber.authorize_url!
    # You will be redirected to the callback url, copy your code
    iex(4)> access_token = ElixirUber.get_token!(code: "CODE")
    # Now we can optionally set this as the global token, and make requests with it by passing :global instead of a token.
    iex(4)> ElixirUber.configure(:global, access_token)
    {:ok, []}
    # Get user object or use client instead of :global
    iex(4)> user = ElixirUber.me(:global)
    ```

## Documentation
[Basic docs on hexdocs site](https://hexdocs.pm/elixir_uber/0.0.1/readme.html)

## Status

It's very early version, most of API functions are missing.

## Changelog

### 0.0.5
- API method for Products added

### 0.0.4
- API method for Places added

### 0.0.3
- API method for Payments added

### 0.0.2
- Basic rides history
- Update dependencies

### 0.0.1
- Basic current user info
- Update dependencies
