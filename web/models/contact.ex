defmodule PhonebookElixir.Contact do
  use PhonebookElixir.Web, :model

  schema "agenda" do
    field :name, :string
    field :lastname, :string
    field :address, :string
    field :email, :string
    field :phone, :string
    field :type_of_phone, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :lastname, :address, :email, :phone, :type_of_phone])
    |> validate_required([:name, :phone, :type_of_phone])
    |> validate_length(:phone, is: 10)
    |> validate_format(:email, ~r/[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-z]{2,3}/)
    |> validate_format(:type_of_phone, ~r/^work$|^home$|^other$/)

  end
end
