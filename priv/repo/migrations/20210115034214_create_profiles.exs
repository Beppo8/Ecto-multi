defmodule Multi.Repo.Migrations.CreateProfiles do
  use Ecto.Migration

  def change do
    create table(:profiles) do
      add :name, :string
      add :location, :string
      add :twitter, :string
      add :github, :string
      add :user_id, references(:users, on_delete: :nothing)

      timestamps()
    end

    create index(:profiles, [:user_id])
  end
end
