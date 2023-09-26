defmodule Satsuma.MixProject do
  use Mix.Project

  def project do
    [
      app: :satsuma,
      version: "0.1.0",
      elixir: "~> 1.15",
      description: "A simple component LiveView component library",
      start_permanent: Mix.env() == :prod,
      package: package(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:phoenix_live_view, "~> 0.20"},
      {:ex_doc, "~> 0.24", only: :dev, runtime: false}
    ]
  end

  defp package() do
    [
      files: ~w(lib priv .formatter.exs mix.exs README*
      package.json),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/raulchedrese/satsuma"}
    ]
  end
end
