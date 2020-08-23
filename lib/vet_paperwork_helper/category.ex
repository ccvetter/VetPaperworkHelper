defmodule VetPaperworkHelper.Category do
  use Ecto.Schema
  import Ecto.Changeset

  schema "categories" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(phrase, attrs) do
    phrase
    |> cast(attrs, [])
    |> validate_required([])
  end
end
