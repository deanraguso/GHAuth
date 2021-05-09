class CallbacksController < Devise::OmniauthCallbacksController
    def github
    @user = User.for_onmiauth(request.env["omniauth.auth"]) 
    signin_and_redirect @user
    end
end