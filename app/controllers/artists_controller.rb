class ArtistsController < ApplicationController

  def index
    @artists = Artist.all

  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    redirect_to artist_path
  end

  def edit
    @artist = Artist.by(params:id)
  end

  def update
  end

  def show
    @artist = Artist.find(params[:id])
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :bio)

  end
end
