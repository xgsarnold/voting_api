require 'test_helper'

class VotersControllerTest < ActionController::TestCase
  # test "should get create" do
  #   number_of_voters = Voter.count
  #   get :create
  #   assert_response :success
  #   assert_equal number_of_voters + 1, Voter.count
  # end

  test "should get show" do
    get :show, id: voters(:one)
    assert_response :success
  end

  test "should get update" do
    v = voters(:one)
    get :update, id: v.id, token: "Wrong token", voter: {name: "EVA"}
    v.reload
    assert_equal "Gillian Cole", v.name
  end

  test "should get update 2" do
    v = voters(:one)
    get :update, id: v.id, token: v.token, voter: {name: "EVA"}
    v.reload
    assert_equal "EVA", v.name
  end

  test "should get update only fields put in" do
    v = voters(:one)
    patch :update, id: v.id, token: v.token, voter: {name: "EVA"}
    # might need to add tooken: v.token outside the hash
    v.reload
    assert_equal "EVA", v.name
    assert_equal "Independent", v.party
  end

end
