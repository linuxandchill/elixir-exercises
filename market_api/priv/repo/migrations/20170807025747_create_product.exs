defmodule MarketApi.Repo.Migrations.CreateProduct do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string
      add :barcode, :string

      timestamps()
    end

  end
end
