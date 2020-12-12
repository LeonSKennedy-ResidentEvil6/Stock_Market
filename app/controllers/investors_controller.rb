class InvestorsController < ApplicationController

    def new
        @investor = Investor.new
    end 

    def create
        @investor = Investor.new(investor_params)
        if @investor.save
            session[:investor_id] = @investor.id
            redirect_to investor_path(@investor)
        else 
            render 'investors/new'
        end 
    end 

    def show
        @investor = Investor.find_by(id: session[:investor_id])
        redirect_to '/' if !@investor
    end 

end
