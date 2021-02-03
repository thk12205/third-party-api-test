class Api::HolidaysController < ApplicationController

  def index
    @message = "test"
    @holidays = HTTP.get("https://holidayapi.com/v1/holidays?pretty&key=#{Rails.application.credentials.holidays_api[:api_key]}&country=US&year=2020").parse
    #@holidays = HTTP.get('https://holidayapi.com/v1/holidays?pretty&country=US&year=2020').parse
    #saving auth method for later
    #.auth("Bearer 2e751a6f-a542-4d9d-ae03-d57cc480040e")
    render 'index.json.jb'
  end

end
