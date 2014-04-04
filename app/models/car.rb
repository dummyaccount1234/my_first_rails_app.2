class Car < ActiveRecord::Base
  belongs_to :window
  has_many :wheels
  acts_as_votable 
end
