class Constituency < ActiveRecord::Base
  belongs_to :voivodeship
  has_many :comittees, :through => :votes
  has_many :users
  has_many :votes, :dependent => :destroy
  accepts_nested_attributes_for :votes
  accepts_nested_attributes_for :comittees

  validate :sum_of_votes

  def sum_of_votes
  	if self.votes.map(&:quantity).sum > self.voters
  		errors.add(:quantity, " of votes exceeds number of voters")
  	end
  end
end
