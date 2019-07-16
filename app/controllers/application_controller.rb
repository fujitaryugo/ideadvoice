class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
  	case resource
  	when User
  	 user_path(current_user)
  	when Client
  	 clients_client_path(current_client)
  	end
  end
end
