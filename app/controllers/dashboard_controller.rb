class DashboardController < ApplicationController

  before_action :authenticate_user!

  def landing_page
  end

  def roles
  end

  def access
    @access = AccessRole.where(role_id: params[:id])
  end

end