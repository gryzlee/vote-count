class Voivodeship < ActiveRecord::Base
	has_many :constituencies, :dependent => :destroy
	has_and_belongs_to_many :comittees

	validates :name, :seats, :comittee_ids, presence: true
	validates :name, length: {minimum: 7}
	validates :seats, numericality:  {only_integer:true}

end
