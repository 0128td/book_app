class SummaryController < ApplicationController
  def edit
    @summaries = Summary.where(book_id: params[:id])
    @book = Book.find_by(id: params[:id])
  end

  def create
    @book_id = params[:id]

    params.each do |param|
      @summary = Summary.new(
        book_id: @book_id,
        section: param[:section],
        summary: param[:summary],
      )
    end

    flash[:notice] = I18n.t("helpers.submit.create")
    redirect_to("/top")
  end
end
