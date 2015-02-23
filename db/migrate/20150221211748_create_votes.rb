class CreateVotes < ActiveRecord::Migration
  def self.up
    create_table :votes do |t|
      t.belongs_to :comittee, index: true
      t.belongs_to :constituency, index: true
      t.integer :votes, null: true

      t.timestamps null: false
    end
  end

  def self.down
  	drop_table :votes
  end
end
