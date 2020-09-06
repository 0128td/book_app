class PublisherController < ApplicationController

    def new
    
    end

    def create
        @name = params[:name]
        Publisher.create(name:@name)
        flash[:notice] = I18n.t("helpers.submit.create")
        redirect_to("/book/new")

    end



end
