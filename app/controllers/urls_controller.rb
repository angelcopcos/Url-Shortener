class UrlsController < ApplicationController
  def index
    @url = Url.new
    @urls = Url.all
  end

  def create
    Url.create(long: params["url"]["long"])
    redirect_to root_path
  end

  def show
    url = Url.find(params[:id])
    redirect_to url.long
  end
end
