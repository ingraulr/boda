class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to root_path
    end

  end

  def show
   @song = Song.find(params[:id])
  end

  private
  def song_params
    params.require(:song).permit(:titulo)
  end


end
