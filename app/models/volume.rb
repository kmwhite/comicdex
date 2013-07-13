class Volume < ActiveRecord::Base
  belongs_to :series
  attr_accessible :name, :number

  has_many :issues

  def publication_start_date
    issues.sort_by { |i| i.publication_date }.first.publication_date
  end
  alias_method :start_date, :publication_start_date

  def publication_stop_date
    issues.sort_by { |i| i.publication_date }.last.publication_date
  end
  alias_method :stop_date, :publication_stop_date

  def publication_date_range(pretty_print = false)
    pretty_print ?  start_date..stop_date :
      "#{start_date.to_s} - #{stop_date.to_s}"
  end
end
