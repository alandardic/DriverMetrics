class Metric < ActiveRecord::Base
 
  belongs_to :driver
  
  validates_presence_of :name, :value, :mtype, :latitude, :longitude, :time_stamp, :driver_id 

  def get_unique_names
  	return self.all().uniq()
  end

   def self.import_metrics(filename)
    File.open(filename) do |file|
      file.each_line do |hash|
        hash = MultiJson.load(hash)
        Metric.new(change_hash_keys(hash)).save!
      end
    end
  end

  def self.change_hash_keys hash
    name_map = {
        'n' => :name,
        'v' => :value,
        't' => :mtype,
        'lat' => :latitude,
        'lon' => :longitude,
        'ts' => :time_stamp,
        'driver_id' => :driver_id
    }

    new_hash = Hash[hash.map { |k, v| [name_map[k], v] }]
    new_hash[:time_stamp] = DateTime.strptime(hash['ts'].to_s, '%s')

    new_hash
  end
end
