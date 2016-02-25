require 'test_helper'

class VotesControllerTest < ActionController::TestCase
  test "should get create" do
    number_of_votes = Vote.count
    get :create
    assert_response :success
    assert_equal number_of_votes + 1, Vote.count
  end

  test "should get destroy" do
    get :destroy, id: votes(:one).id
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
