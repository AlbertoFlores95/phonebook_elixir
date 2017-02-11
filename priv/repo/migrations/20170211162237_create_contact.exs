defmodule PhonebookElixir.Repo.Migrations.CreateContact do
  use Ecto.Migration

  def change do
    create table(:agenda) do
      add :name, :string
      add :lastname, :string
      add :address, :string
      add :email, :string
      add :phone, :string
      add :type_of_phone, :string

      timestamps()
    end

  end
end
