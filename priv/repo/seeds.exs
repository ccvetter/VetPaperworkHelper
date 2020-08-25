# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     VetPaperworkHelper.Repo.insert!(%VetPaperworkHelper.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias VetPaperworkHelper.User
alias VetPaperworkHelper.Phrase
alias VetPaperworkHelper.Category
alias VetPaperworkHelper.Repo

user = %User{username: "Test", email: "test@test.com", password_hash: "098f6bcd4621d373cade4e832627b4f6", is_admin: false} |> Repo.insert!
category = %Category{name: "Allergies", is_subcategory: false, user_id: user.id} |> Repo.insert!
plants = %Category{name: "Plants", is_subcategory: true, category_id: category.id, user_id: user.id} |> Repo.insert!
%Phrase{name: "Peanuts", phrase: "This is for peanut allergies", category_id: plants.id, user_id: user.id} |> Repo.insert!
