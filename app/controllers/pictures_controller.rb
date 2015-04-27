class PicturesController < ApplicationController




def new 
@pictures =Picture.new
end

  def create
    
@picture = Picture.new(picture_params)
    if @picture.save
    	redirect_to pictures_url
    else
    	render :new
    end
  end

 private
  def picture_params
    params.require(:picture).permit(:artist, :title, :url)
  end

end



end

