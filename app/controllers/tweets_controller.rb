class TweetsController < ApplicationController
    
    def index
        @tweets = Tweet.all
    end
    
    def new
        
    end
    
    def create
        Tweet.create(params_create)
    end
    
    private
    def params_create
        params.permit(:text)
    end
    
end
