class WelcomeController < ApplicationController
  def index
  end

  def search
    options = { client_id: ENV['CLIENT_ID'],
               client_secret: ENV['CLIENT_SECRET'],
               api_version: "20130815" }

    client = Foursquare2::Client.new(options)
    output = client.search_venues(
      ll: "#{params[:lat]}, #{params[:long]}", query: params[:cat])

    render json: output
  end

end
