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
    redirect_to song_path
  else
    render :new
  end
end

  def update
  end

  def edit
@song = Song.find(params[:id])
  end

  def show
    @song = Song.find(params[:id])
  end

  private

  def song_params
      params.require(:song).permit(:name)

    end
  end
