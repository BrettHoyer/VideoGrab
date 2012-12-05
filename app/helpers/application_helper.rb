module ApplicationHelper
  def authorized?
    @current_user.facebook_access_token 
  end

end
