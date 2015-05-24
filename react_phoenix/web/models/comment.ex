defmodule ReactPhoenix.Comment do
  use ReactPhoenix.Web, :model

  schema "comments" do
    field :author, :string
    field :text, :string

    timestamps
  end

  @required_fields ~w(author text)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If `params` are nil, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
