defmodule ElixirUber.Mixfile do
  use Mix.Project

  def project do
    [
      app: :elixir_uber,
      version: "0.0.6",
      elixir: "~> 1.3",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      test_coverage: [tool: ExCoveralls],
      deps: deps(),
      docs: [extras: ["README.md"], main: "readme"]
    ]
  end

  defp description do
    """
    Uber client library for Elixir.
    """
  end

  defp package do
    [
      licenses: ["MIT"],
      keywords: ["Elixir", "Uber", "REST", "HTTP", "API"],
      maintainers: ["Marat Galiev"],
      links: %{"GitHub" => "https://github.com/maratgaliev/elixir_uber",
               "Docs" => "https://hexdocs.pm/elixir_uber"}
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information

  def application do
    [applications: app_list(Mix.env)]
  end

  defp app_list(_), do: app_list()
  defp app_list, do: [:logger, :httpoison, :poison, :inets, :ssl, :crypto, :oauth2]


  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:httpoison, "~> 0.9.1"},
      {:poison, "~> 2.2.0"},
      {:ex_doc, "~> 0.13.1", only: [:dev, :docs]},
      {:oauth2, "~> 0.8"}
    ]
  end
end
