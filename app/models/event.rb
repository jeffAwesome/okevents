class Event < ActiveRecord::Base
  validates :title, presence: true
  validates :date, presence: true
  validates :location, presence: true
  has_attached_file :photo, :styles => { :large => "2400x2400>", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
