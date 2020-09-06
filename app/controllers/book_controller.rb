class BookController < ApplicationController

    def top
        @books = Book.all.order(update_at: :desc).limit(5)

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
                    impression:@impression)
        flash[:notice] = I18n.t("helpers.submit.create")
        redirect_to("/top")

    end


    def edit
        @book = Book.find_by(id: params[:id])


    end

    def update
        @title = params[:title]
        @image = params[:image]
        @author = params[:author]
        @publisher = params[:publisher_id][:id]
        @genre1 = params[:genre_id][:genre1_id]
        @genre2 = params[:genre_id][:genre2_id]
        @genre3 = params[:genre_id][:genre3_id]
        @impression = params[:impression]

        Book.update(title:@title,
            image:@image,
            author:@author,
            publisher_id:@publisher,
            genre1_id:@genre1,
            genre2_id:@genre2,
            genre3_id:@genre3,
            impression:@impression)

        flash[:notice] = I18n.t("helpers.submit.update")
        redirect_to("/top")


    end


end
