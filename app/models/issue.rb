class Issue < ActiveRecord::Base
  belongs_to :volume
  attr_accessible :cover, :description, :number, :publication_date, :title
end
