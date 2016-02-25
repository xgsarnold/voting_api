require 'test_helper'

class VotersControllerTest < ActionController::TestCase
  # test "should get create" do
  #   number_of_voters = Voter.count
  #   get :create
  #   assert_response :success
  #   assert_equal number_of_voters + 1, Voter.count
  # end

  test "should get show" do
    get :show, id: voters(:one).id
    assert_response :success
  end

  # test "should get update" do
  #   get :update
  #   assert_response :success
  # end

end
