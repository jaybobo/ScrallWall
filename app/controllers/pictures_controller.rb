class PicturesController < ApplicationController

  def new
    @picture = Picture.new
  end

  def create
    raise params
    @picture = Picture.create
    @picture.image = params[:picture][:image]
    @picture.save!

    latitude = params[:latitude]
    longitude = params[:longitude]

    radius = 0.5
    artifact = Artifact.new(longitude: longitude, latitude: latitude)
    @nearby_artifacts = Artifact.within(radius, artifact)
    # get_nearby_artifacts(latitude, longitude)

    redirect_to XXX
  end

  def destroy
  end

end
