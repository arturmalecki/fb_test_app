# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  #
  #before_filter :ensure_application_is_installed_by_facebook_user
	#before_filter :ensure_authenticated_to_facebook
	before_filter :get_user

	def get_user
		@facebook_user = facebook_session.user
    #@user = User.find_or_create_by_facebook_uid(@facebook_user.uid)
	end
end
