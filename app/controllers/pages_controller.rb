class PagesController < ApplicationController
    def home
        @articles = Article.all
    end
    
    def about
    end 

    def sign_up
    end 
end
