# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :line do
    sequence(:people) {|n| 'people'+n.to_s }
    object "Object"
    place "Place"
    start_time "2013-01-26 12:06:33"
    end_time "2013-01-27 12:06:33"
    sequence(:price) {|n| 1.5 * n }
    photo "Photo"
    url "Url"
    note "Note"
    association :action
  end
end
