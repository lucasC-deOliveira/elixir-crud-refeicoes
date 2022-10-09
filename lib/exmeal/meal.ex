defmodule Exmeal.Meal do
  use Ecto.Schema
  import Ecto.Changeset
  alias Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  @required_params [:calories, :date, :description]

  @derive {Jason.Encoder, only: [:id, :calories, :date, :description]}

  schema "meals" do
    field :calories, :integer
    field :date, :date
    field :description, :string

    timestamps()
  end

  def changeset(params, user \\ %__MODULE__{}) do
    user
    |> cast(params, @required_params)
    |> validate_required(@required_params)
  end
end