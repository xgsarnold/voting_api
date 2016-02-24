class Vote < ActiveRecord::Base
  belongs_to :voter
  belongs_to :candidate
  validates :voter_id, uniqueness: true

  # def total_votes
  #   Vote.order_by(candidate_id:).count
  # end



end
