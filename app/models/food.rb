class Food < ActiveRecord::Base
  belongs_to :monster_food
  attr_accessible :name, :taste
end
