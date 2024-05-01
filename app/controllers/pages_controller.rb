class PagesController < ApplicationController
  def home
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
  end

  def random_album
    @album = Album.order("RAND()").first
    redirect_to album_path(@album)
  end
end
