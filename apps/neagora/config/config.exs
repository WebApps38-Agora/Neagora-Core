# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :neagora,
  namespace: Neagora,
  ecto_repos: [Neagora.Repo]

# Configures the endpoint
config :neagora, NeagoraWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tbNW8h3CGz1HnEwRdRvWDE67sfVYZVM99N6gyd+6stQrE7QbaTx4mAjlKBDzv9/E",
  render_errors: [view: NeagoraWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Neagora.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
