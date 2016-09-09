FactoryGirl.define do
  factory :contact do
    full_name { Faker::Name.name }
    email { Faker::Internet.email }
    phone_number { Faker::PhoneNumber.phone_number }
    address { Faker::Address.street_address }

    factory :invalid_contact do
      full_name nil
      address nil
    end
  end
end