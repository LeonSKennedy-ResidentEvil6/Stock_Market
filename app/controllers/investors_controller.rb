class InvestorsController < ApplicationController

    def new
        @investor = Investor.new
    end 

    def create
        @investor = Investor.new(user_params)
        if @investor.save
            session[:investor_id] = @investor.id
            redirec_to investor_path(@investor)
        else 
            render :new
        end 
    end 

    def show 
    end 

end
