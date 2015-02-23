class Vote < ActiveRecord::Base
	belongs_to :comittee
	belongs_to :constituency
	accepts_nested_attributes_for :comittee, :constituency
end
