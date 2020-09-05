class BookController < ApplicationController

    def top

    end


    def new
        
    end

    def create
        @title = params[:title]
        @image = params[:image]
        @author = params[:author]
        @publisher = params[:publisher_id][:id]
        @genre1 = params[:genre_id][:genre1_id]
        @genre2 = params[:genre_id][:genre2_id]
        @genre3 = params[:genre_id][:genre3_id]
        @impression = params[:impression]

        Book.create(title:@title,
                    image:@image,
                    author:@author,
                    publisher_id:@publisher,
                    genre1_id:@genre1,
                    genre2_id:@genre2,
                    genre3_id:@genre3,
                    Impression:@impression)
        flash[:notice] = "登録しました"
        redirect_to("/top")

    end

end
