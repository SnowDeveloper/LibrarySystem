FactoryGirl.define do
  factory :loan_extention_req do
    return_date Faker::Date.forward(7)
    status Faker::Boolean.boolean
  end
end
