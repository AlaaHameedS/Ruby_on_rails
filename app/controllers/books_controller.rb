class BooksController < ApplicationController
  before_action :get_author

  def index
    @books = @authors.books
  end

  private
  def get_author
    @author = Author.find([:id_author])
  end
end
      