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

%Category{name: "Test", is_subcategory: false} |> Repo.insert!
%User{username: "Test", email: "test@test.com", password_hash: "098f6bcd4621d373cade4e832627b4f6", is_admin: false} |> Repo.insert!
