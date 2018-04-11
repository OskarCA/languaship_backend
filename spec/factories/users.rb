FactoryBot.define do
  factory :user do
    password "password1"
    password_confirmation "password1"
    gender "male"
    age 18

    sequence(:name) { |n| "user#{n}" }
    sequence(:email) { |n| "email#{n}@email.com" }
  end
end
