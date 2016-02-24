class Vote < ActiveRecord::Base
  belongs_to: voter
  belongs_to: candidate
  validates :token, presence: true, uniqueness: true
end
