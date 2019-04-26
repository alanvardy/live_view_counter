# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :live_view_counter, LiveViewCounterWeb.Endpoint,
  url: [host: "localhost"],
  live_view: [
    signing_salt: "xUACBhMzgYmlpUT+W0LkCNoSQG68fRfj"
  ],
  secret_key_base: "gAATZoQTVwd/WvNdHNXkZ0zJ+fhtag45DlL9CTtWKso/HK6wZoXy3MuO3PgyLFdh",
  render_errors: [view: LiveViewCounterWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LiveViewCounter.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use liveview
config :phoenix, :json_library, Jason

# Render leex files with the liveview engine
config :phoenix, template_engines: [leex: Phoenix.LiveView.Engine]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
