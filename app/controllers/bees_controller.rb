class BeesController < ApplicationController

  def index
    @bees = Bee.all.geocoded
    @markers = @bees.map do |bee|
      {
        lat: bee.latitude,
        lng: bee.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { bee: bee }),
        image_url: helpers.asset_url('Bee-custom-marker.png')
      }
    end
  end

  def new
    @bee = Bee.new
  end

  def create
    @bee = Bee.new(bee_params)
    @bee.user_id = current_user.id
    @bee.image = "bee-face"
    if  @bee.save
      redirect_to bee_path(@bee)
    else
      render :new
    end
  end

  def show
    @bee = Bee.find(params[:id])
  end

  def show
    @bee = Bee.find(params[:id])
  end

  private

  def bee_params
    params.require(:bee).permit(:name, :description, :user_id, :features, :address, :image)
  end

end





