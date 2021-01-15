defmodule Multi.Repo do
  use Ecto.Repo,
    otp_app: :multi,
    adapter: Ecto.Adapters.Postgres
end
