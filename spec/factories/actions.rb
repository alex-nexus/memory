# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :action do
    name "MyString"
    hide_object ""
    hide_price ""
    hide_url ""
    hide_end_time ""
    hide_people ""
  end
end
