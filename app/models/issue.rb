class Issue < ActiveRecord::Base
  belongs_to :volume
  attr_accessible :description, :number, :publication_date, :title
  attr_accessible :cover
  has_attached_file :cover, :styles => { :large => "487x750>", :medium => "325x500", :thumb => "156x240>" }, :default_url => "http://placehold.it/500x500&text=Missing%20Cover"
end
