class ApplicationController < ActionController::Base
  before_action :check_token

  def index
    @messages = Message.order(:created_at)
  end

  def create
    Message.create!(
      message: params[:message],
      source: params[:source]
    )

    redirect_to action: :index, token: @token
  end

  private

  def check_token
    raise ActionController::RoutingError.new('Not Found') if params[:token] != ENV["REQUIRED_TOKEN"]

    @token = params[:token]
  end
end
