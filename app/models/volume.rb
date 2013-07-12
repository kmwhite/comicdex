class Volume < ActiveRecord::Base
  belongs_to :series
  attr_accessible :name, :number

  has_many :issues
end
