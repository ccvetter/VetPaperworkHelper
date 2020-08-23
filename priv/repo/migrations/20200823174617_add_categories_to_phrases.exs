defmodule VetPaperworkHelper.Repo.Migrations.AddCategoriesToPhrases do
  use Ecto.Migration

  def change do
    alter table(:phrases) do
      add :category_id, references(:categories, on_delete: :nothing)
    end
  end
end
