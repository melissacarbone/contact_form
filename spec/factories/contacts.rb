FactoryGirl.define do
  factory :contact do
    first_name 'John'
    last_name 'Doe'
    subject 'Something'
    sequence :email do |n|
      "john#{n}@example.com"
    end
    description 'this is a description'
  end
end
