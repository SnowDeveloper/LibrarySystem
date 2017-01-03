FactoryGirl.define do
  factory :loan do
    start_date Faker::Date.backward(7)
    return_date Faker::Date.forward(7)
    cost Faker::Number.decimal(2)
  end
end
