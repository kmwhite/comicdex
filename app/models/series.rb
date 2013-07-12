class Series < ActiveRecord::Base
  belongs_to :publisher
  belongs_to :series_type
  attr_accessible :description, :name

  has_many :volumes
end
