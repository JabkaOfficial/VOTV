class Admin::TracksController < Admin::BaseController

  def new
    @track = Track.new
  end

  def create
    @track = Track.new(track_params)
    if @track.save
      redirect_to @track, notice: 'Track was successfully created.'
    else
      render :new
    end
  end

  def edit
    @track = Track.find(params[:id])
  end

  def update
    @track = Track.find(params[:id])
    if @track.update(track_params)
      redirect_to @track, notice: 'Track was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    track = Track.find(params[:id])
    track.destroy
    redirect_to root_path, notice: 'Track was successfully deleted.'
  end

  private
    
  def track_params
    params.require(:track).permit(:name, :length, :lyrics, :album_id)
  end

end
