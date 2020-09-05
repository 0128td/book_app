class GenreController < ApplicationController

    def new
    
    end

    
    def create
        @name = params[:name]
        Genre.create(name:@name)
        flash[:notice] = "登録しました"
        redirect_to("/book/new")

    end




end
