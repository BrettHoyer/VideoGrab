require 'open-uri'
class PagesController < ApplicationController
  def home
    @posts = JSON.parse(open("https://graph.facebook.com/me?fields=home&access_token=#{@current_user.facebook_access_token}&limit=200").read)["home"]["data"]
    
  end
end
