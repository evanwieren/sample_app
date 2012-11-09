FactoryGirl.define do
  factory :user do
    name        "Eric VanWieren"
    email       "eric@codex.org"
    password    "foobar"
    password_confirmation "foobar"
  end
end