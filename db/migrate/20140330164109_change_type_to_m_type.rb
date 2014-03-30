class ChangeTypeToMType < ActiveRecord::Migration
  def change 
    rename_column :metrics, :type, :mtype
  end
end
