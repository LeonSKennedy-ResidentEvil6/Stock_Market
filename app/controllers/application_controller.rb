class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    helper_method :current_user, :investor_params

    def current_investor
        @current_investor ||= Investor.find(session[:investor_id]) if session[:investor_id]
    end 

    def investor_params
        params.require(:investor).permit(:username, :email, :password)
    end 

    def authentication_required
        if !logged_in?
            redirect_to login_path
        end 
    end 

    def logged_in?
        !!current_investor
    end 


end
