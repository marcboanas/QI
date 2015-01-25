module Api
  module V1
    class SessionsController < Api::V1::ApiController
      respond_to :json
      
      def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
          if user.activated?
            user.generate_authentication_token
            render json: {
              success: true,
              id: user.id,
              user_auth_token: user.authentication_digest,
              email: user.email
            }
          else
            render json: {
              success: false,
              message: "User is not active."
            }, status: 401
          end
        else
          invalid_login_attempt
        end       
      end
      
      protected
      
        def invalid_login_attempt
          render json: {
            success: false,
            message: "Error with your login or password"
          }, status: 401
        end
    end
  end
end