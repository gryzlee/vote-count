class ChangeColumnNameVotes < ActiveRecord::Migration
  def self.up
    rename_column :votes, :votes, :quantity
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
