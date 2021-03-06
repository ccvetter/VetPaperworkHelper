# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :vet_paperwork_helper, VetPaperworkHelper.Repo,
  database: "vet_paperwork_helper_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

config :vet_paperwork_helper,
  ecto_repos: [VetPaperworkHelper.Repo]

# Configures the endpoint
config :vet_paperwork_helper, VetPaperworkHelperWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "sTbeKdOYmNtTG+4W6IQeIQCmlSqEqDjqsPc80b+cG3PYTAaUSCccxaQ4bhUxWyjy",
  render_errors: [view: VetPaperworkHelperWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: VetPaperworkHelper.PubSub,
  live_view: [signing_salt: "jqIJhKAf"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
