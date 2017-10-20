defmodule Gdex.Mixfile do
  use Mix.Project

  def project do
    [app: :gdex,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     test_coverage: [tool: ExCoveralls],
     deps: deps(),
     name: "Gdex",
     source_url: "https://github.com/fracek/gdex"]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [{:httpoison, "~> 0.13"},
     {:poison, "~> 3.0"},
     {:websocket_client, "~> 1.3.0"},
     {:dialyze, "~> 0.2", only: :dev, runtime: false},
     {:ex_doc, "~> 0.16", only: :dev, runtime: false},
     {:mock, "~> 0.3.1", only: :test},
     {:excoveralls, "~> 0.7", only: :test}]
  end
end
