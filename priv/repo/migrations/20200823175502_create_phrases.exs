defmodule VetPaperworkHelper.Repo.Migrations.CreatePhrases do
  use Ecto.Migration

  def change do
    create table(:phrases) do
      add :name, :string, null: false
      add :phrase, :string, null: false
      add :category_id, references(:categories, on_delete: :nothing), null: false
      add :user_id, references(:users, on_delete: :nothing), null: false

      timestamps()
    end
    create index(:phrases, [:user_id])
  end
end
