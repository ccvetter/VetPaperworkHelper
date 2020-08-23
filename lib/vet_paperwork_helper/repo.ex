defmodule VetPaperworkHelper.Repo do
  use Ecto.Repo,
    otp_app: :vet_paperwork_helper,
    adapter: Ecto.Adapters.Postgres
end
