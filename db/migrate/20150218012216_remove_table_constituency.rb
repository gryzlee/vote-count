class RemoveTableConstituency < ActiveRecord::Migration
  def change
  	drop_table :constituencies
  end
end
