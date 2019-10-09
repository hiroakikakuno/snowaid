class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  before_action :configure_permitted_parameters, if: :devise_controller?
# ログイン済ユーザーのみにアクセスを許可する

  def configure_permitted_parameters
    #devise_parameter_sanitizer = 許可するパラメータを追加（railsのバージョンによって書き方が異なるので注意）
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end
end
