class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :new, :edit, :create, :update , :destroy]
  #skip_before_action :verify_authenticity_token ,only: [:index, :show, :new, :edit, :create, :update , :destroy]

def index
  @users = User.paginate(:page => params[:page]).order('id DESC')
  #render json: @timesheets
end
def edit
  @user = User.find(params[:id])
end

def update
  @users = User.paginate(:page => params[:page])
  last_page = @users.total_pages
#redirect_to: your_path(page: last_page)
  @user = User.find(params[:id])
  if @user.update(user_params)
    if ( last_page - (@user.id/3).to_i <= 0 )
        redirect_to users_path
    end
    if (last_page- (@user.id/3).to_i>0 )
          redirect_to users_path(page: (last_page- (@user.id/3).to_i))
        end
  else
    render 'edit'
end
end
def show
  @user = User.find(params[:id])
  @projections = Projection.select {|a| a.user_id == @user.id}
end
private
def user_params
  params.require(:user).permit( :username, :mobileno, :version,:designation ,:isadmin,:ismanagement, :is_project_manager, :is_project_lead, :employee_id, :weight, :email,:approved, :Sbu)
end

end
