class ApplicationController < ActionController::Base
	skip_before_action :verify_authenticity_token
	#protect_from_forgery with: :null_session
	rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

	private
	def render_not_found execption
		render json: { error: execption.message }, status: :not_found
	end
end
