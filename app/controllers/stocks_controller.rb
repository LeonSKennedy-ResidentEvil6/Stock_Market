class StocksController < ApplicationController
    before_action :authentication_required
    
    def index 
        @stocks = Stock.all
    end 

    def new
        @stock = Stock.new
    end 

    def create
        @stock = Stock.create(params[:id]) 
    end 

    
end
