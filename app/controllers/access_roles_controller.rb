class AccessRolesController < ApplicationController

  before_action :access_roles_params, only: [:add_access]

  def add_access

    AccessRole.create(access_roles_params)
    render json:{ response:'success'}
  end

  def remove_access
    AccessRole.find_by(access_id: params[:access_role][:access_id], element_id: params[:access_role][:element_id],
                       role_id: params[:access_role][:role_id]).delete
    render json:{ response:'success'}
  end

  private

  def access_roles_params
    params.require(:access_role).permit(:access_id, :element_id, :role_id)
  end

end