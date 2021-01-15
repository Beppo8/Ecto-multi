defmodule Multi.Accounts.Profile do
  use Ecto.Schema
  import Ecto.Changeset

  schema "profiles" do
    field :github, :string
    field :location, :string
    field :name, :string
    field :twitter, :string
    field :user_id, :id

    timestamps()
  end

  @doc false
  def changeset(profile, attrs) do
    profile
    |> cast(attrs, [:name, :location, :twitter, :github])
    |> validate_required([:name, :location, :twitter, :github])
  end
end
