class PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.all
    render 'index'
  end
  def show
    @playlist = Playlist.find(params[:id])
    render 'show'
  end
  def new
    @playlist = Playlist.new
    render 'new'
  end
  def edit
    @playlist = Playlist.find(params[:id])
    render 'edit'
  end
  def create
    @playlist = Playlist.new(playlist_params)
    if @playlist.save
      redirect_to @playlist, notice: 'Playlist was successfully created.'
    else
      render action: 'new'
    end
  end
  def update
    @playlist = Playlist.find(params[:id])
    if @playlist.update(playlist_params)
      redirect_to @playlist, notice: 'Playlist was successfully updated.'
    else
      render action: 'edit'
    end
  end
  def destroy
    @playlist = Playlist.find(params[:id])
    @playlist.destroy
    redirect_to playlists_url, notice: 'Playlist was successfully destroyed.'
  end
  private
  # Only allow a trusted parameter "white list" through.
  def playlist_params
    params.require(:playlist).permit(:name, :description, :picture)
  end

end
