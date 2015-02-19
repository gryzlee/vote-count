class Voivodeship < ActiveRecord::Base
	has_many :constituencies
	has_and_belongs_to_many :comittees, :join_table => 'voivodeships_comittees', :foreign_key => 'comittee_id'
end
