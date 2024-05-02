# app/controllers/albums_controller.rb
class Admin::AlbumsController < Admin::BaseController
  # Other actions
  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to album_path(@album), notice: 'Album was successfully created.'
    else
      render :new
    end
  end

  def destroy
    album = Album.find(params[:id])
    album.destroy
    redirect_to root_path, notice: 'Album was successfully deleted.'
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    if @album.update(album_params)
      redirect_to album_path, notice: 'Album was successfully updated.'
    else
      render :edit
    end
  end

  private

  def album_params
    params.require(:album).permit(:name, :author, :release_year, :album_cover, :length, :quantity)
  end
end
