class Metric < ActiveRecord::Base
  belongs_to :driver

  validates :name, :value, :type, :latitude, :longitude, :time_stemp, :driver_id presence: true
end
