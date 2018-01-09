class Line < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  
  resourcify
  
  attr_accessible :user_id, :verb_id, :note, :object, :people, :photo, :place, :price, :start_time, :url

  belongs_to :user
  belongs_to :verb
  #has_one :place
  
  default_scope order('id DESC')
  scope :by_user, lambda {|user_id|where('user_id = ?', user_id)}
  scope :current_week, lambda { where("created_at > ? AND created_at < ?", Time.now.ago(7.days), Time.now ) }
  
  before_save :parse_date
  validates_presence_of :user_id, :verb_id, :start_time     
   
  def parse_date
    puts self.start_time
    self.start_time = Chronic.parse(self.start_time.to_s)     
  end 
   
  def sentence
    s = ["I"]    
    s << "and "+people if !self.people.nil? && self.people!=''
    s << self.verb.name
    s << self.object unless self.object.nil?    
    s << "in " + self.place if !self.place.nil? && self.place!=''

    unless self.start_time.nil?        
      if self.start_time.hour
        s << "on #{self.start_time.strftime("%b %d") }"
      else
        s << "at #{self.start_time.strftime("%l, %b %d") }"
      end
    end 
            
    s.join(" ")    
  end    
end
