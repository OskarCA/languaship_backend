class Api::V1::UserController < ApiController
  before_action :authenticate_api_v1_user!, :users_near_you

  def index
    render json: @users, status: :ok
  end

  def show
    render json: @user, status: :ok
  end

  private
  
  def users_near_you
    @users = User.all
    @user = User.find_by(params[:id])
  end
end
