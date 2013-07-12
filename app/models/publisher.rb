class Publisher < ActiveRecord::Base
  attr_accessible :logo, :name

  has_many :series
end
