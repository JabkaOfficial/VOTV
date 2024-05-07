class PagesController < ApplicationController
  def home
    # @albums = Album.all
    @sort_column = params[:sort_column] || 'name'
    @sort_direction = params[:sort_direction] || 'asc'
    @albums = Album.order("#{@sort_column} #{@sort_direction}")
  end

  def show
    @album = Album.find(params[:id])
  end

  def random_album
    @album = Album.order("RAND()").first
    redirect_to album_path(@album)
  end
end
