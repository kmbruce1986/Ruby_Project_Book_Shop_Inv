require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/book.rb' )

also_reload( '../models/*' )

get '/books' do
  @books = Book.all
  erb(:"book/books")
end

get '/books/add' do
  @authors = Author.all
  @books = Book.all
  erb(:"book/add_book")
end

get '/books/search' do
  erb (:"book/search")
end

get '/books/search_results' do
@books = Book.all
if params[:search]
  @books = Book.find_by_title(params[:search])
else
  @books = Book.all
end
erb (:"book/results")
end

post '/books' do
  @books = Book.new(params)
  @books.save()
  redirect '/books'
end

get '/books/:id' do
  @authors = Author.all
  @books = Book.find_by_id(params[:id])
  erb (:"book/show_book")
end


get '/books/:id/edit'  do
  @authors = Author.all
  @books = Book.find_by_id(params[:id])
  erb (:"book/edit_book")
end

post '/books/:id/update' do
  @books = Book.new(params)
  @books.update
  redirect '/books'
end

post '/books/:id/delete' do
  @books = Book.find_by_id(params[:id])
  @books.delete
  redirect 'books'
end
