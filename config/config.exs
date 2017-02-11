# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phonebook_elixir,
  ecto_repos: [PhonebookElixir.Repo]

# Configures the endpoint
config :phonebook_elixir, PhonebookElixir.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2kbZJ633R99erI8skTm5Oc0fV6oI/ZYeF1XuiRnPqE+XfNl+IUNtiXE1RyxrCL/m",
  render_errors: [view: PhonebookElixir.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhonebookElixir.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
