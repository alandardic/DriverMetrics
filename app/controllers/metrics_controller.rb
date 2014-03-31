class MetricsController < ApplicationController

  def index
    set_driver()
    @metric_names = @driver.metrics.select(:name).distinct.map { |m| m.name }
    @metric_names
  end

  def welcome
    @metric_names = Metric.select(:name).distinct.map { |m| m.name }
    @metric_names
  end

  def get_markers
    name = params[:name]
    metrics = Metric.where(:name => name)
    @markers = metrics.map do |m|
    {
      lat: m.latitude,
      lng: m.longitude,
      infowindow: "amazing!"
    }
    end

    render :json => @markers.take(100)
  end

  private

  def set_driver
    @driver = Driver.find(params[:driver_id])
  end
end