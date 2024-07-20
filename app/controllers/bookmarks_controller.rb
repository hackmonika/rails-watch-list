class BookmarksController < ApplicationController
  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to bookmark_path(@bookmark)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:)
  end
end
