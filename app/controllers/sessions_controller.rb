class SessionsController < ApplicationController

    def welcome
        @investor = current_investor
    end 

    def new
        @investor = Investor.new
    end 

    def create
        @investor = Investor.find_by(email: investor_params[:email])
       if @investor && @investor.authenticate(user_params[:password])
        session[:investor_id] = @investor.id
        redirect_to investor_path(@investor)
       else 
        render :new
       end 
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
        redirect_to login_path
    end 

end
