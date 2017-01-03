FactoryGirl.define do
  factory :book do |b|
    title Faker::Book.title
    authors Faker::Book.author
    call_no Faker::Number.number(6)
    
  end
end
