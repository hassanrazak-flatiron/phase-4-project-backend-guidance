class UserMailer < ApplicationMailer
    default from: 'cadetvero@gmail.com'
  
    def contact_email(email, message)
      @message = message
      @user_email = email
      mail(to: 'cadetvero@gmail.com', subject: 'New Contact Form Message')
    end
  end
  