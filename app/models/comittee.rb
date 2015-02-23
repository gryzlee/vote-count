class Comittee < ActiveRecord::Base
	has_and_belongs_to_many :voivodeships
	has_many :comittees, :through => :votes
	accepts_nested_attributes_for :comittees
	has_many :votes, :dependent => :destroy
	accepts_nested_attributes_for :votes


	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, 
						:default_url => "/images/:style/missing.png"
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/,
											  :size => { :in => 0..200.kilobytes }
	validates_presence_of :name, :voivodeship_ids
end
