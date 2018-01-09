class Verb < ActiveRecord::Base
  attr_accessible :name, :is_active, :sort_order, :hide_object, :hide_people, :hide_price, :hide_url, 
    :object_label, :object_example 
  
  has_many :lines
  
  scope :active, where(:is_active => true)
  scope :sorted, order("sort_order asc")
end
