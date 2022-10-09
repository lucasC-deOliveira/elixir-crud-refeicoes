defmodule Exmeal.Repo.Migrations.CreateMealsTable do
  use Ecto.Migration

  def change do
    # TO DO
    create table(:meals) do
      add :description, :string
      add :calories, :integer
      add :date, :date

      # inserted_at e updated_at
      timestamps()
    end
  end
end
