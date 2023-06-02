module Api
  module V1
    module Auth
      class SessionsController < DeviseTokenAuth::SessionsController
        protect_from_forgery with: :null_session
        skip_before_action :verify_authenticity_token
      end
    end
  end
end
