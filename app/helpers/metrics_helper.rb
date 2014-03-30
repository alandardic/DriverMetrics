require 'multi_json'

module MetricsHelper
  class JsonHendler

 	attr_reader :filename, :content, :data

	def initialize(filename)
	  @filename = filename
	end

	def import
	  scan_log do |hash|
	  store_metric(hash)
	  end
	end

	def store_metric hash
      adapted_hash = adapt_metric_hash(hash)
	  metric_name = MetricUniqueName.find_or_create_by(name: adapted_hash[:name])
   	  driver = Driver.find_or_create_by(id: adapted_hash[:driver_id])

	  metric = Metric.new(adapted_hash)
	  metric_name.metrics << metric
	  driver.metrics << metric
	end

	def adapt_metric_hash hash
	  #replace keys from metrics log with schema defined ones 
  	  mappings = { "n" => :name, "v" => :value, "t" => :type, 
								"lat" => :latitude, "lon" => :longitude,
								"ts" => :timestamp, "driver_id" => :driver_id }

	  adapted_hash = Hash[hash.map {|k, v| [mappings[k], v] }]
	  adapted_hash[:timestamp] = DateTime.strptime(hash["ts"].to_s, '%s')
	  return adapted_hash
	end

	def scan_log(&block)
	  File.open(filename) do |file|
		  parse_content(file, &block)
	  end
	end

	def parse_content(content, &block)
	  content.each_line do |line|
	    parse_line(line, &block)
	  end
	end

	def parse_line(line, &block)
	  hash = MultiJson.load(line) 
	  yield hash
	  rescue => ex
		#...
		
	end

  end
end