class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :phone_number
      t.date :joined_on
      t.string :image_file_name

      t.timestamps
    end
  end
end
