defmodule VetPaperworkHelper.Repo.Migrations.CreateCategories do
  use Ecto.Migration

  def change do
    create table(:categories) do
      add :name, :string, null: false
      add :is_subcategory, :boolean, default: false

      timestamps()
    end
  end
end
