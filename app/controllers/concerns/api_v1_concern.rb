module ApiV1Concern
  extend ActiveSupport::Concern
  include DeviseTokenAuth::Concerns::SetUserByToken

  included do
    before_action :authenticate_user!
  end
end
