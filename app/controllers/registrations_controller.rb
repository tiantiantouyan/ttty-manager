class RegistrationsController < Devise::RegistrationsController
  skip_before_action :authenticate_user!

  def new
    redirect_to new_user_session_path, alert: 'Registrations are not open yet, but please check back soon'
  end

  def create
    redirect_to new_user_session_path, alert:'Registrations are not open yet, but please check back soon'
  end
end
