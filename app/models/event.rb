class Event < ActiveRecord::Base
  validates :title, presence: true
  validates :date, presence: true
  validates :location, presence: true
  has_attached_file :photo, :styles => { :large => "2400x2400>", :standard => "600x600", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  def event_month month
    months = ['Jan', 'Feb', 'March', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sept', 'Oct', 'Nov', 'Dec' ]
    months[month-1]
  end

  def event_time time
    time.strftime("%I:%M%p")
  end

end
