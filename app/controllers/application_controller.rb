class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    helper_method :current_user, :investor_params

    def current_investor
        @current_investor ||= Investor.find(session[:investor_id]) if session[:investor_id]
    end 

    def investor_params
        params.require(:investor).permit(:username, :email, :password)
    end 


end
