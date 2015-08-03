class Monster < ActiveRecord::Base
  belongs_to :zone
  attr_accessible :color, :name
end
