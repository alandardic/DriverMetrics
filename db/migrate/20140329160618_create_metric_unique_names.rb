class CreateMetricUniqueNames < ActiveRecord::Migration
  def change
    create_table :metric_unique_names do |t|
      t.string :name

      t.timestamps
    end
  end
end
