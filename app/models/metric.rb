class Metric < ActiveRecord::Base
  belongs_to :driver

  validates :name, :value, :type, :latitude, :longitude, :time_stamp, :driver_id presence: true
end
