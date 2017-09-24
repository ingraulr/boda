class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new(params[:song])
  end

  def create
    @song = Song.new(params[:song])
    @song.save
    redirect_to root_path
  end

  def show
   @song = Song.find(params[:id])
  end

  private
  def song_params
    params.require(:song).permit(:titulo)
  end


end
