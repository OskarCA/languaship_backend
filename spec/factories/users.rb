FactoryBot.define do
  factory :user do
    password "password1"
    password_confirmation "password1"

    sequence(:name) { |n| "user#{n}" }
    sequence(:email) { |n| "email#{n}@email.com" }
  end
end
