defmodule VetPaperworkHelper.Phrase do
  use Ecto.Schema
  import Ecto.Changeset

  schema "phrases" do
    field :name, :string
    field :phrase, :string
    field :category_id, :integer
    field :user_id, :integer
    timestamps()
  end

  @doc false
  def changeset(phrase, attrs) do
    phrase
    |> cast(attrs, [])
    |> validate_required([])
  end
end
