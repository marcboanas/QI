module Api
  module V1
    class ApiController < ApplicationController
      protect_from_forgery with: :null_session
      before_filter :restrict_access
      skip_before_filter  :verify_authenticity_token
      
      def authorize_user
        if authorization_token
          user = User.find_by(authentication_digest: authorization_token)
          if !user.nil?
            yield user
          else
            render json: {
              success: false,
              message: "No user found. Please login again"
              }, status: 401
          end
        else
          render nothing: true, status: 401
        end
      end
      
      private
        
        def restrict_access
          authenticate_or_request_with_http_token do |token, options|
            ApiKey.exists?(access_token: token)
          end
        end
      
        def authorization_token
          @authorization_token ||= authorization_header
        end

        def authorization_header
          request.headers['user-auth-token']
        end
    end
  end
end