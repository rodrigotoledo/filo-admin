# frozen_string_literal: true

module Api
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :null_session, if: proc { |c| c.request.format == 'application/json' }
    skip_before_action :verify_authenticity_token
  end
end
