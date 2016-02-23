require 'test_helper'
require 'minitest/pride'

class CandidateTest < ActiveSupport::TestCase
  test "candidates can be bought" do
    assert Candidate
  end

  test "candidates can be created" do
    bern = Candidate.create!(name: "Bernie Sanders", hometown: "Burlington, Vermont", district: "Vermont's at-large", party: "Democrat")
    racist = Candidate.create(name: "Donald Trump", district: "Top 1%", party: "Republican")

    assert Candidate.where(name: "Bernie Sanders"), bern
    refute Candidate.where(name: "Donald Trump").exists?
  end
end
