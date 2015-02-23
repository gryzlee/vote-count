class RemoveTimestampsFromVotes < ActiveRecord::Migration
  def change
    remove_column :votes, :created_at, :string
    remove_column :votes, :updated_at, :string
  end
end
