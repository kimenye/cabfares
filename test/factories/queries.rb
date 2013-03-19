# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :query do
    from "MyString"
    to "MyString"
    origin_lat ""
    origin_lon ""
    dest_lat ""
    dest_lon ""
  end
end
