class StaticPagesController < ApplicationController
  def home
    
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
    params[:email] ||= 'barnespeter213@gmail.com'
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
