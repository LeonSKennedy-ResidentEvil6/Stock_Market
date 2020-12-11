class SessionsController < ApplicationController

    def welcome
        @investor = current_user
    end 

    def new
        @investor = Investor.new
    end 

    def create
        
    end 


end
