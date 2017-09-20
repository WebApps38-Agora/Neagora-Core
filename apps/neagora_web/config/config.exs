# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :neagora_web,
  namespace: NeagoraWeb,
  ecto_repos: [NeagoraWeb.Repo]

# Configures the endpoint
config :neagora_web, NeagoraWebWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0N36Yv0jzLR3VlMyN5LMeoiOV177UeWYEyr9qtkJt7VmW37NKSmsLeU5m75SjTBl",
  render_errors: [view: NeagoraWebWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: NeagoraWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
