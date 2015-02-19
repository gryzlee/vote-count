class CreateVoivodeshipsComitteesJoin < ActiveRecord::Migration
  def self.up
    create_table 'voivodeships_comittees', :id => false do |t|
    	t.column :voivodeship_id, :integer
    	t.column :comittee_id, :integer
    end
  end

  def self.down
  	drop_table 'voivodeships_comittees'
  end
end
