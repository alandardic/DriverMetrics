class Metric < ActiveRecord::Base
 
  belongs_to :driver
  belongs_to :metric_unique_name
  
  validates_presence_of :name, :value, :type, :latitude, :longitude, :time_stamp, :driver_id 
end
