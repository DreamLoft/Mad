class Api::UsersController < Api::ApplicationController
      before_action :authenticate_user!
  #before_action :authenticate_user!, only: [:index, :show, :new, :edit, :create, :update , :destroy]
  #skip_before_action :verify_authenticity_token ,only: [:index, :show, :new, :edit, :create, :update , :destroy]

def index
  @users= User.all
   render json: @users
end

private
def user_params
  params.require(:user).permit( :username, :mobileno, :version,:designation ,:isadmin,:ismanagement, :is_project_manager, :is_project_lead, :employee_id, :weight, :email)
end

end
