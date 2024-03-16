class BookmarksController < ApplicationController


  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmarks_params)
    @bookmark.save
    # redirect_to bookmark_path
  end

  private

  def bookmarks_params
    params.require(:bookmark).permit[:comment]
  end
end
