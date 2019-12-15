class HomeController < ApplicationController
  def home
  end

  def aboutUs
  end
  
  def contact
  end

  def request_contact
    name = params[:name]
    email = params[:email]
    telephone = params[:telephone]
    message = params[:message]

    #Check for blank email and print message
    if email.blank?
      flash[:alert] = I18n.t('home.request_contact.no_email')
      
    # if it is not blank send the email and print message
    else
      ContactMailer.contact_email(email, name, telephone, message).deliver_now
      flash[:notice] = I18n.t('home.request_contact.email_sent')
    end

    redirect_to root_path
  end
end
