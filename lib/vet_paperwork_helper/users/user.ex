defmodule VetPaperworkHelper.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :username, :string
    field :email, :string
    field :password, :string, virtual: true
    field :password_hash, :string
    field :is_admin, :boolean, default: false

    timestamps()

    has_many :phrases, VetPaperworkHelper.Phrase
  end

  @doc false
  @required_fields ~w(username email password)
  # @optional_fields ~w(is_admin)
  def changeset(user, attrs) do
    user
    |> cast(attrs, [])
    |> validate_required([@required_fields])
  end
end
