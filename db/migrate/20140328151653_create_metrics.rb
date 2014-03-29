class CreateMetrics < ActiveRecord::Migration
  def change
    create_table :metrics do |t|
      t.string :name
      t.string :value
      t.string :type
      t.float :latitude
      t.float :longitude
      t.timestamp :time_stamp
      t.references :driver, index: true

      t.timestamps
    end
  end
end
