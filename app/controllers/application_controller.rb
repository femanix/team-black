class ApplicationController < ActionController::API
  # Váriavel que contem o secret_key do app 
  SECRET_KEY = Rails.application.secrets.secret_key_base.to_s

  include ActionController::HttpAuthentication::Token::ControllerMethods
end
