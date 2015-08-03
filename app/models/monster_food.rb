class MonsterFood < ActiveRecord::Base
  belongs_to :monster
  belongs_to :food
  # attr_accessible :title, :body
end
