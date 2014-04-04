class Window < ActiveRecord::Base
  has_one :car
  acts_as_votable 
end
