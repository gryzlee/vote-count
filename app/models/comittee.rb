class Comittee < ActiveRecord::Base
	has_and_belongs_to_many :voivodeships, :join_table => 'voivodeships_comittees', :foreign_key => 'voivodeship_id'
end
