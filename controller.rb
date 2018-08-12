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

get '/authors/add' do
  @authors = Author.all
  erb(:add_author)
end

post '/authors/' do
  @authors = Author.new(params)
  @authors.save()
  redirect '/authors/'
end


get '/books/add' do
  @books = Book.all
  erb(:add_book)
end

post '/books/' do
  @books = Book.new(params)
  @books.save()
  redirect '/books/'
end

get '/books/:id' do
  @books = Book.find_by_id(params[:id])
  erb (:show_book)
end


get '/books/:id/edit'  do
  @books = Book.find_by_id(params[:id])
  erb (:edit_book)
end

post '/books/:id/update' do
  @books = Book.new(params)
  @books.update
  redirect '/books/'
end
