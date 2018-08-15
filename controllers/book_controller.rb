require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/book.rb' )
require_relative( '../models/author.rb' )

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
end
erb (:"book/results")
end

get '/books/search_genre' do
  erb (:"book/search_genre")
end

get '/books/search_genre_results' do
@books = Book.all
if params[:search]
  @books = Book.find_by_genre(params[:search])
end
erb (:"book/results_genre")
end

# post '/books/add_another' do
#   @authors = Author.all
#   @books = Book.new(params)
#   @books.save()
#   redirect '/books/add'
#   # erb(:"book/add_book")
# end
post '/books' do
  @authors = Author.all
  @books = Book.new(params)
  @books.save()
  # redirect '/books'
  erb(:"book/add_book")
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
