class DashboardController < ApplicationController

  def landing_page
  end

  def roles
  end

  def access
    @access = AccessRole.where(role_id: params[:id])
  end

end