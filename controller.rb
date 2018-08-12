require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( 'models/author.rb' )
require_relative( 'models/book.rb' )

also_reload( 'models/*' )

get '/books/' do
  @books = Book.all
  erb(:books)
end

get '/authors/' do
  @authors = Author.all
  erb(:authors)
end
