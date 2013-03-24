# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cab do
    name "MyString"
    company false
    reg "MyString"
    verified false
    phone_number "MyString"
  end
end
