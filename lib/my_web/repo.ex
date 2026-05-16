defmodule MyWeb.Repo do
  use Ecto.Repo,
    otp_app: :my_web,
    adapter: Ecto.Adapters.Postgres
end
