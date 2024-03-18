class BookmarksController < ApplicationController


  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmarks_params)
    @bookmark.list = @list
    @bookmark.save
    redirect_to list_path(@list)
  end

  private

  def bookmarks_params
    params.require(:bookmark).permit[:comment]
  end
end
