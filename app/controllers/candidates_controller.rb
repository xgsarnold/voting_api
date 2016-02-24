class CandidatesController < ApplicationController
  def index
    Candidate.create!(name: "Frank Underwood", hometown: "Gaffney, SC", district: "South Carolina", party: "Democrat")
    Candidate.create!(name: "Bernie Sanders", hometown: "Burlington, VE", district: "Vermont", party: "Democrat")
    render json: Candidate.all
  end

  def show
    render json: Candidate.where(party: "Democrat").first
  end

  def create
    render json: Candidate.create(name: "Frank Underwood", hometown: "Gaffney, SC", district: "South Carolina", party: "Democrat")
  end
end


# Make the index action return a JSON representation of all the candidates.
# Make the show action return the first candidate.
# Make the create action create a new candidate (in the database). It can have any properties for now.
