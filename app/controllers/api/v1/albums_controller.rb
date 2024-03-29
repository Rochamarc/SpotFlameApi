class Api::V1::AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :update, :destroy]
 

  # GET /albums
  def index
    @albums = Album.all
    
    render json: @albums
  end

  # GET /albums/1
  def show
    render json: {"Artist" => @album.artist.name , "Album" => @album } 
  end

  # POST /albums
  def create
    @album = Album.new(album_params)

    if @album.save
      render json: @album
    else
      render json: @album.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /albums/1
  def update
    if @album.update(album_params)
      render json: @album
    else
      render json: @album.errors, status: :unprocessable_entity
    end
  end

  # DELETE /albums/1
  def destroy
    @album.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album
      @album = Album.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def album_params
      params.require(:album).permit(:name, :length, :year, :image, :votes, :artist_id)
    end

end
