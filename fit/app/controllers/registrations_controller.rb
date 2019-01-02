class RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters, if: :devise_controller?, only: :create

  protected

  def configure_permitted_parameters
    params.require(:user).permit(:type)
  end


  def after_inactive_sign_up_path_for(user)
    edit_user_path(user)
  end
end