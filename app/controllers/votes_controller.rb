class VotesController < ApplicationController
  def create
    render json: Vote.create(voter_id: params[:voter_id], candidate_id: params[:candidate_id])
  end

  def destroy
    v = Vote.find(vote_id: params[vote_id])
    v.destroy
    if v.exists?
      render json: "Vote was not deleted."
    else
      render json: "Vote #{vote_id} has been destroyed."
    end
  end

  def index
    # render json: Candidate.all
  end
end
