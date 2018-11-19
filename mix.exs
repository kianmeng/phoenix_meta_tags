defmodule PhoenixMetaTags.MixProject do
  use Mix.Project

  def project do
    [
      app: :phoenix_meta_tags,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "Phoenix Meta Tags",
      source_url: "https://github.com/hlongvu/phoenix_meta_tags"
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
      {:phoenix, "~> 1.4.0"},
      {:phoenix_html, "~> 2.10"},
      {:plug, "~> 1.7"}
    ]
  end


  defp description() do
    "A Phoenix library helps generating meta tags for website."
  end

  defp package() do
    [
      # This option is only needed when you don't want to use the OTP application name
      name: "phoenix_meta_tags",
      # These are the default files included in the package
      files: ~w(lib priv .formatter.exs mix.exs README* readme* LICENSE*
                license* CHANGELOG* changelog* src),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/hlongvu/phoenix_meta_tags"}
    ]
  end


end
