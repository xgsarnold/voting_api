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
    v = Voter.create(name: "Pope Francis")

    assert v.token
  end

  # test "voters only have one vote" do
  #   pope = Voter.create(name: "Pope Francis")
  #   pope.cast_vote("Sanders")
  #   pope.cast_vote("Sanders")
  #
  #   assert_equal "Sanders", pope.cast_vote("Sanders")

end
