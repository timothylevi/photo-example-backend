class UsersController < ApplicationController
  def create
    user = User.create!(user_params)
    user_avatar_url = url_for(user.avatar)
    render json: user, image: user_avatar_url
  end

private

  def user_params
    # form_data = {email: ..., password_digest: ..., avatar: ...}
    params.permit(:email, :password_digest, :avatar)
  end

end
