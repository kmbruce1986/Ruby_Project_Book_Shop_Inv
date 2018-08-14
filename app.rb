require('sinatra')
require('sinatra/contrib/all')

require_relative('controllers/author_controller.rb')
require_relative('controllers/book_controller.rb')

get '/' do
  @books = Book.all
  @authors = Author.all
  erb( :index )
end
