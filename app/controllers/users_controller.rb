class UsersController::SessionsController < Devise::SessionsController

	force_ssl unless Rails.env.development?

end
