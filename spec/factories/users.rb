FactoryBot.define do
  factory :user do
    email "example@fake.com"
    password "password1"
    password_confirmation "password1"
    name "Aiden Jubelin"
    nickname "MeepMills"
  end
end
