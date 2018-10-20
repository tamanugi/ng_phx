# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ng_phx,
  ecto_repos: [NgPhx.Repo]

# Configures the endpoint
config :ng_phx, NgPhxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "o1RO8ChaLXy24iVLHAPvLyefk/ixhZNT611iscSJq+75CAfMhw18SF39ENYykwxW",
  render_errors: [view: NgPhxWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: NgPhx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
