require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  test "votes exist" do
    assert Vote
  end

  test "votes can be created" do
    fear_itself = Candidate.create!(name: "Frank Underwood", hometown: "Gaffney, South Carolina", district: "South Carolina", party: "Democrat")
    sheep = Voter.create!(name: "Average American", party: "Both")
    Vote.create!(candidate_id: fear_itself.id, voter_id: sheep.id)
    refute Vote.all.blank?
  end
end
