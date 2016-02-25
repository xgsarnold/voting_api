require 'test_helper'

class CandidatesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, id: candidates(:one).id
    assert_response :success
    assert_equal candidates(:one).name, "Frank Underwood"
  end

  # test "should get create" do
  #   number_of_candidates = Candidate.count
  #   get :create
  #   assert_response :success
  #   assert_equal number_of_candidates + 1, Candidate.count
  # end

end
