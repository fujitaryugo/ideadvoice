class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
  	case resource
  	when User
  	 user_path(current_user)
  	when Client
  	 clients_client_path(current_client)
  	end
  end

  protected
  def configure_permitted_parameters

  	if params['controller'] == 'users/registrations'
	    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :sex, :age, :location, :job])
	elsif params['controller'] == 'clients/registrations'
	    devise_parameter_sanitizer.permit(:sign_up, keys: [:group_name, :last_name, :first_name, :phone_number, :client_url, :introduction])
	end
  end

end
