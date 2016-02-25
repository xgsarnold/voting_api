class VotersController < ApplicationController
  def create
    render json: Voter.create(name: params[:name], party: params[:party])
  end

  def show
    render json: Voter.find(params[:id])
  end

  def update
    # Mason example:
    v = Voter.find(params[:id])
    if v.token == params[:token]
      v.update(voter_params)
      render json: v
    else
        render json: "Invalid token."
    end

    # My version:
    # v = Voter.find(params[:id])
    # if v.token == params[:token]
    #   v.name = params[:name] if params[:name]
    #   v.party = params[:party] if params[:party]
    #   v.save
    #   render json: v
    # else
    #   "Invalid token."
    # end
  end

  private def voter_params
    params.require(:voter).permit(:name, :party)
  end
end
