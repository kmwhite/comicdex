class Volume < ActiveRecord::Base
  belongs_to :series
  attr_accessible :name, :number
  has_attached_file :logo, :styles => { :large => "487x750>", :medium => "325x500", :thumb => "156x240>" }, :default_url => "http://placehold.it/500x500&text=Missing%20Logo"

  has_many :issues

  def publication_start_date
    @start_date ||= issues.sort_by { |i| i.publication_date }.first.publication_date
  end
  alias_method :start_date, :publication_start_date

  def publication_stop_date
    @stop_date ||= issues.sort_by { |i| i.publication_date }.last.publication_date
  end
  alias_method :stop_date, :publication_stop_date

  def publication_date_range(pretty_print = false)
    !pretty_print ? start_date..stop_date :
      "#{start_date.strftime("%B")} #{start_date.year.to_s} - #{stop_date.strftime('%B')} #{stop_date.year.to_s}"
  end
end
