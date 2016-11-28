class SongsController < ApplicationController

  def index
    @songs = Song.all
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    @song = Song.create!(
      title: params[:title],
      artist: params[:artist],
      genre: params[:genre],
      lyrics: params[:lyrics]
      )
    redirect_to '/songs'
  end

  def show
    @song = Song.find(params[:id])
    render "show.html.erb"
  end

  def edit
    @song = Song.find(params[:id])
    render 'edit.html.erb'
  end

  def update
    @song = Song.update(
      title: params[:title],
      artist: params[:artist],
      genre: params[:genre],
      lyrics: params[:lyrics]
      )
    redirect_to "/songs/#{@song.id}"
  end

  def destroy
    song = Song.find(params[:id])
    song.destroy
    redirect_to '/songs'
  end

end
