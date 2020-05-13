class PartiesController < ApplicationController
  def index
    parties = Party.all

    render json: parties
  end

  def show
    party = Party.includes([:people]).where("short_code = ?", params[:id]).first

    render json: party, include: [:people]
  end

  def destroy
    party = Party.find(params[:id])
    party.destroy

    render json: {"message": "Party deleted"}
  end

  def create
    party = Party.create latitud: params[:latitud],
      longitud: params[:longitud],
      short_code: params[:short_code]

    render json: party
  end

  def ping
    party = Party.where("short_code = ?", params[:id]).first

    person = party.people.find_or_initialize_by(token: params[:token])
    person.lat = params[:lat]
    person.lng = params[:lng]
    person.name = params[:name]
    person.save

    render json: person
  end
end
