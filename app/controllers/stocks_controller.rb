class StocksController < ApplicationController

    def index 
        @stock = Stock.new
        @stocks = Stock.all
    end 

    def show
        @stock = Stock.find(params[:id])
        
    end 

    def create
    end 

    
end
