defmodule SkedgeApi.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :password, :string
      add :age, :integer
      add :stooge, :string

      timestamps()
    end

  end
end
