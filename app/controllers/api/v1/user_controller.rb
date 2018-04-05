class Api::V1::UserController < ApiController
  before_action :authenticate_api_v1_user!

  def index
    render json: user, status: :ok
  end
end
