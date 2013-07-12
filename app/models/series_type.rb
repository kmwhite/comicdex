class SeriesType < ActiveRecord::Base
  attr_accessible :name, :schedule

  has_many :series
end
