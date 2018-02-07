defmodule ProjectManagementExample.Management.Project do
  use Ecto.Schema
  import Ecto.Changeset
  alias ProjectManagementExample.Management.Project


  schema "projects" do
    field :description, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(%Project{} = project, attrs) do
    project
    |> cast(attrs, [:title, :description])
    |> validate_required([:title, :description])
  end
end
