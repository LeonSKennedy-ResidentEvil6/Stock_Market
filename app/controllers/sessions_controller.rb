class SessionsController < ApplicationController

    def welcome
        @investor = current_user
    end 

    def new
        @investor = Investor.new
    end 

    def create
        
    end 

    # for onmiauth
    # def create_with_google
    #     investor = Investor.find_or_create_by(username: auth['email']) do |u| 
    #         u.password = 'password'
    #     end 
    #     investor.save
    #     session[:investor_id] = investor.id
    #     redirect_to market_path
    # end 

    def destroy
        session.delete :investor_id
        redirect_to '/'
    end 

end
