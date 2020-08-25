defmodule VetPaperworkHelper.Repo.Migrations.CreateCategories do
  use Ecto.Migration

  def change do
    create table(:categories) do
      add :name, :string, null: false
      add :is_subcategory, :boolean, default: false
      add :category_id, references(:categories, on_delete: :nothing)
      add :user_id, references(:users, on_delete: :nothing), null: false

      timestamps()
    end
  end
end
