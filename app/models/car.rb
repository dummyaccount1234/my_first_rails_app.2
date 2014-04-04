class Car < ActiveRecord::Base
  belongs_to :window
  has_many :wheels
end
