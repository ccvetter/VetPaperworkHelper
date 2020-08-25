defmodule VetPaperworkHelper.Schema do
  use Absinthe.Schema

  alias VetPaperworkHelper.UserResolver

  object :user do
    field :id, non_null(:id)
    field :email, non_null(:string)
    # field :password, :string, virtual: true
    field :password_hash, non_null(:string)
    field :is_admin, non_null(:boolean)
  end

  query do
    @desc "Get all users"
    field :all_users, non_null(list_of(non_null(:user))) do
      resolve(&UserResolver.all_users/3)
    end
  end
end
