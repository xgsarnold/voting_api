class VotersController < ApplicationController
  def create
    render json: Voter.create(name: params[:name], party: params[:party])
  end

  def show
    render json: Voter.find(id: params[:id]).first
  end

  def update
    v = Voter.find(id: params[:id])
    v.update(name: params[:name], party: params[:party])
    if v.token == params[:token]
      v.save
    else
      raise StandardError
    end
  end
end
