class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @list = List.find(params[:id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    redirect_to lists_path(@list)
  end

  private

  def bookmark_params
    params.require(@bookmark).permit(@list, :movie)
  end
end
