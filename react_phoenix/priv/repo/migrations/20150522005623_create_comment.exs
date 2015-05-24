defmodule ReactPhoenix.Repo.Migrations.CreateComment do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :author, :string
      add :text, :text

      timestamps
    end

  end
end
