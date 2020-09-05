class PublisherController < ApplicationController

    def new
    
    end

    def create
        @name = params[:name]
        Publisher.create(name:@name)
        flash[:notice] = "登録しました"
        redirect_to("/book/new")

    end



end
