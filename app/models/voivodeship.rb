class Voivodeship < ActiveRecord::Base
	has_many :constituencies
	has_and_belongs_to_many :comittees
end
