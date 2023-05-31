class UserMailerController < ApplicationController
    def send_email
      UserMailer.contact_email(params[:email], params[:message]).deliver_now
      render json: { message: 'Email sent' }, status: :ok
    end
  end
  