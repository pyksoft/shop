FactoryGirl.define do
  factory :product do
    name         "Beer"
    price        { Faker::Commerce.price }

    trait :inactive do
      active false
    end

  end
end
