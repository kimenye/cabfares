# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :fare do
    cab nil
    query nil
    verified false
    reporter "MyString"
    phone_number "MyString"
  end
end
