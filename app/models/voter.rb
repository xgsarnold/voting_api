require 'securerandom'
class Voter < ActiveRecord::Base
  has_one :vote
  validates :name, presence: true
  before_create :generate_token

  # def cast_vote(name)
  #   elect = Candidate.find(name: name)
  #   if Voter.votes.empty?
  #     v = Vote.create(candidate_id: e.id, voter_id: )
  #     # v = Vote.create("Frank Underwood")
  #     Voter.votes << v
  #   else
  #     "You're a dirty cheater. Cheers mate"
  #   end
  #
  # end
  #







  private def generate_token
    self.token = SecureRandom.hex
  end
end
