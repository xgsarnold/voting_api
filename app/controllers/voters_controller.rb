class VotersController < ApplicationController
  def create
    render json: Voter.create(name: params[:name], party: params[:party])
  end

  def show
    render json: Voter.find(params[:id])
  end

  def update
    v = Voter.find(params[:id])
    if v.token == params[:token]
      v.name = params[:name] if :name
      v.party = params[:party] if :party
    if  v.save
    render json: v
    end
    end
  end
end
