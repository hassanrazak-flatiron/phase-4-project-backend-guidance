class UserMailer < ApplicationMailer
    default from: 'guidancehelpdesk@gmail.com'
  
    def contact_email(email, message)
      @message = message
      @user_email = email
      mail(to: 'guidancehelpdesk@gmail.com', subject: 'New Contact Form Message')
    end
  end
  