class Publisher < ActiveRecord::Base
  attr_accessible :name
  attr_accessible :logo
  has_attached_file :logo, :styles => { :large => "487x750>", :medium => "325x500", :thumb => "156x240>" }, :default_url => "http://placehold.it/500x500&text=Missing%20Cover"

  has_many :series
end
