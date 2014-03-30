namespace :metric_logs do
  desc "import all metric logs"
  task :import => :environment do
    file = './app/assets/metric_logs/metrics_json.log'
    importer = Metric.import_metrics(file)
  end
end