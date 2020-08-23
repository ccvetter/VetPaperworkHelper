defmodule VetPaperworkHelper.Repo.Migrations.CreatePhrases do
  use Ecto.Migration

  def change do
    create table(:phrases) do
      add :name, :string, null: false
      add :phrase, :string, null: false
      add :user_id, references(:users, on_delete: :nothing)

      timestamps()
    end
    create index(:phrases, [:user_id])
  end
end
