class RegistrationsController < Devise::RegistrationsController

  private

  def after_sign_up_path_for(resource)
 if current_business_user
 new_businessprofile_path(current_business_user) #your path
else
 businessprofiles_path
end
end

end