class Volume < ActiveRecord::Base
  belongs_to :series
  attr_accessible :name, :number
end
