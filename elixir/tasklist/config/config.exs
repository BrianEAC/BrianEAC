# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :tasklist,
  ecto_repos: [Tasklist.Repo]

# Configures the endpoint
config :tasklist, TasklistWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "i2lsyR0WfBTyUgYFd0Qo4RWArM1MPl4whbrOgkKVN95YB1xv9WnGLNEZ2gqSgdFD",
  render_errors: [view: TasklistWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Tasklist.PubSub,
  live_view: [signing_salt: "8OkwGaL6"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
