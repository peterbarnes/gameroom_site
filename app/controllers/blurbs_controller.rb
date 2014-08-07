class BlurbsController < ApplicationController
  def index
    @blurbs = Blurb.all
  end

  def show
    @blurb = Blurb.find(params[:id])
  end

  def edit
    @blurb = Blurb.find(params[:id])
  end

  def update
    @blurb = Blurb.find(params[:id])
    if @blurb.update_attributes(blurb_params)
      redirect_to root_url
    else
      render 'edit'
    end
  end

  def new
    @blurb = Blurb.new
  end

  def create
    
  end

  def destroy
    Blurb.find(params[:id]).destroy
  end

  private

    def blurb_params
      params.require(:blurb).permit!
    end
end
