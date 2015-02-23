class CreateVoivodeshipsComitteesJoin < ActiveRecord::Migration
  def self.up
    create_table 'comittees_voivodeships', :id => false do |t|
    	t.belongs_to :comittee, index: true
    	t.belongs_to :voivodeship, index: true
    end
  end

  def self.down
  	drop_table 'comittees_voivodeships'
  end
end
