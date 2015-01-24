module Api
  module V1
    class UsersController < Api::V1::ApiController
      respond_to :json
      
      def index
        authorize_user do |user|
          @user = user
          render
        end
      end
    end
  end
end