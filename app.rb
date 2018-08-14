require('sinatra')
require('sinatra/contrib/all')

require_relative('controllers/author_controller.rb')
require_relative('controllers/book_controller.rb')

get '/' do
  @books1 = Book.stock_level_return(0)
  @books2 = Book.stock_level_return(1)
  @books3 = Book.stock_level_return(2)
  @books4 = Book.stock_level_return(9)

  @authors = Author.all
  erb( :index )
end
