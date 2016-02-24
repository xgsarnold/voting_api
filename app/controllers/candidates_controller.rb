class CandidatesController < ApplicationController
  def index
    render json: Candidate.all
  end

  def show
    render json: Candidate.find(id: params[:id]).first
    # render json: Candidate.find(params[:id])
  end

  def create
    render json: Candidate.create(name: params[:name], hometown: params[:hometown], district: params[:district], party: params[:party])
  end
end


# Make the index action return a JSON representation of all the candidates.
# Make the show action return the first candidate.
# Make the create action create a new candidate (in the database). It can have any properties for now.
