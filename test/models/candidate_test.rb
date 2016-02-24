require 'test_helper'
require 'minitest/pride'

class CandidateTest < ActiveSupport::TestCase
  test "candidates can be bought" do
    assert Candidate
  end

  test "candidates can be created" do
    frank = Candidate.create!(name: "Frank Underwood", hometown: "Gaffney, SC", district: "South Carolina, District 5", party: "Democrat")
    trump = Candidate.create(name: "Donald Trump", district: "Top 1%", party: "Republican")

    assert Candidate.where(name: "Bernie Sanders"), bern
    refute Candidate.where(name: "Donald Trump").exists?
  end

  test "candidates can receive votes" do
    frank = Candidate.create!(name: "Frank Underwood", hometown: "Gaffney, SC", district: "South Carolina, District 5", party: "Democrat")
    sheep = Voter.create!(name: "Zoe Barnes", party: "Democrat")
    Vote.create(voter_id: sheep.id, candidate_id: frank.id)
  end
end
