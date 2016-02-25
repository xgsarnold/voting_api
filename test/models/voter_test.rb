require 'test_helper'
require 'minitest/pride'

class VoterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "voters are real" do
    assert Voter
  end

  test "voters have tokens" do
    v = Voter.create(name: "Pope Francis", party: "Independent")
    assert v.token
  end
end
