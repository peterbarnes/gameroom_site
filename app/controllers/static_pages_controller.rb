class StaticPagesController < ApplicationController
  def home
    @blurb = Blurb.first
  end

  def locations
    
  end

  def services
    
  end

  def contact
    
  end

  def about
    
  end

  def index
    params[:email] ||= 'andrewhannagameroom@gmail.com'
  end

  def sendit
    if Contact.email(params).deliver
      flash[:success] = "Thank you!  Your message has been sent!"
    else
      flash[:error] = "Oops!  Something went wrong"
    end
      redirect_to contact_path
  end
end
