require 'securerandom'
class Voter < ActiveRecord::Base
  has_one :vote
  validates :name, presence: true
  validates :party, presence: true
  before_create :generate_token

  private def generate_token
    self.token = SecureRandom.hex
  end
end
