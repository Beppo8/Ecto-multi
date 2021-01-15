# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :multi,
  ecto_repos: [Multi.Repo]

# Configures the endpoint
config :multi, MultiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/4aqsf4Omuv/aFWedZaNkSTb3hJfDvi6flYLsBOPvUD4xmegq5xjWTdXbiAOSk6M",
  render_errors: [view: MultiWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Multi.PubSub,
  live_view: [signing_salt: "goBRAnJd"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
