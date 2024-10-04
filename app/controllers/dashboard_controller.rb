class DashboardController < ApplicationController
  def index
    @user = User.find_by(id: session[:current_user_id])
    if !@user
      redirect_to root_path, alert: "You must be signed in to view this page."
    end
  end
end
