defmodule VetPaperworkHelper.Category do
  use Ecto.Schema
  import Ecto.Changeset

  schema "categories" do
    field :name, :string
    field :is_subcategory, :boolean
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
