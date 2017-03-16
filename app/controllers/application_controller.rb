class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  # def authenticate_admin!
  #   unless admin_signed_in? && current_admin.superadmin
  #     redirect_to '/'
  #   end
  # end

end
