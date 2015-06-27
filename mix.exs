defmodule DdsBlog.Mixfile do
  use Mix.Project

  def project do
    [app: :dds_blog,
     version: "0.0.1",
     elixir: "~> 1.0",
     deps: deps]
  end

  def application do
    [applications: [:logger, :cowboy],
     mod: {DdsBlog, []}]
  end

  defp deps do
    [
      {:cowboy, "1.0.0"},
      {:earmark, ">= 0.1.17"},
      {:timex, "0.13.3"}
    ]
  end
end
