class HomeController < ApplicationController
  def index
  	@page_css_class = "home blog"
  end

  def about
  	@page_css_class = "contact page page-template-default"
  end

  def contact
  	@page_css_class = "about page page-template-default"
  end

  def send_email
  	options = {name: params[:name],
  				email: params[:email],
  				message: params[:message],
  				subject: params[:subject]
  	}
  	UserMailer.inquiry_email(options).deliver_now
  end
end
