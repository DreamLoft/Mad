class Api::ApplicationController < ActionController::API
      #include DeviseTokenAuth::Concerns::SetUserByToken
      include DeviseTokenAuth::Concerns::SetUserByToken
  #    protect_from_forgery with: :null_session

end
