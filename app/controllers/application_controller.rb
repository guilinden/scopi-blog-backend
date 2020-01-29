class ApplicationController < ActionController::Base
	skip_before_action :verify_authenticity_token
	#protect_from_forgery with: :null_session
	rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

	def not_found
    render json: { error: 'not_found' }
  end

  def authorize_request
    header = request.headers['Authorization']
    header = header.split(' ').last if header
    begin
      @decoded = JsonWebToken.decode(header)
      @current_user = User.find(@decoded[:user_id])
    rescue ActiveRecord::RecordNotFound => e
      render json: { errors: e.message }, status: :unauthorized
    rescue JWT::DecodeError => e
      render json: { errors: e.message }, status: :unauthorized
    end
  end

	private
	def render_not_found execption
		render json: { error: execption.message }, status: :not_found
	end
end
