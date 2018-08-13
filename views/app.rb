require('sinatra')
require('sinatra/contrib/all')

require_relative('controllers/authors_controller.rb')
require_relative('controllers/books_controller.rb')

get '/' do
  erb( :index )
end