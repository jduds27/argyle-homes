class PhotosController < ApplicationController
  before_action :set_home_photo, only: [:edit, :show, :update, :destroy]
  def index
    @home_photo = Photo.all
  end

  def new
    @home_photo = Photo.new
  end

  def create
    @home_photo = Photo.new(photo_params)

    respond_to do |format|
      if @home_photo.save
        format.html { redirect_to photos_path, notice: 'Your photo has been uploaded.' }
      else
        format.html { render :new }
      end
    end
  end

  def show
    @home_photo = Photo.find(params[:id])
  end

  def edit
    @home_photo = Photo.find(params[:id])
  end

  def update
    @home_photo = Photo.find(params[:id])
  end

  def destroy
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :main_image, :remove_image)
  end

  def set_home_photo
    @home_photo = Photo.find(params[:id])
  end
end
