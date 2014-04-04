class Widget < ActiveRecord::Base
  belongs_to :user
  belongs_to :color
  belongs_to :combo_pack
end
