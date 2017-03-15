class PagesController < ApplicationController
  def index
  end
  def index2
  end

  def get_address
    
      @direccion =  Geocoder.address([params[:latitude],params[:longitude]])
     render json: @direccion
  end



  def direccion
  	if params[:latitude].present? && params[:longitude].present?
  		@direccion = Geocoder.address([params[:latitude],params[:longitude]])
  	else
  		@direccion = "Error"
  
    end
    respond_to do |format|
    	format.js
    end
  end
end
