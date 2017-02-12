class Api::V1::UsersController < Api::V1::ApiController
  respond_to :json

  def show
    respond_with User.find(params[:id])
  end

end
