FactoryGirl.define do
  factory :contact do
    first_name 'John'
    last_name 'Doe'
    subject 'Something'
    email 'test@test.com'
    description 'this is a description'
  end
end
