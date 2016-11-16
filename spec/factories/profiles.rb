FactoryGirl.define do
  factory :profile do
    first_name  { Faker::Name.first_name }
    last_name   { Faker::Name.last_name }
    street_name { Faker::Lorem.sentence }
    first_name  { Faker::Name.first_name }
    last_name   { Faker::Name.last_name }
    bio         { Faker::Lorem.sentence }
    first_name  { Faker::Name.first_name }
    last_name   { Faker::Name.last_name }
    bio         { Faker::Lorem.sentence }
  end
end

      t.string :first_name
      t.string :last_name
      t.string :street_name
      t.string :house_number
      t.string :addition
      t.string :postal_code
      t.string :city
      t.string :country
      t.string :string
      t.references :user, foreign_key: true
