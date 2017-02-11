defmodule PhonebookElixir.ContactTest do
  use PhonebookElixir.ModelCase

  alias PhonebookElixir.Contact

  @valid_attrs %{address: "some content", email: "some content", lastname: "some content", name: "some content", phone: "some content", type_of_phone: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Contact.changeset(%Contact{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Contact.changeset(%Contact{}, @invalid_attrs)
    refute changeset.valid?
  end
end
