require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/book.rb' )

also_reload( '../models/*' )

get '/books' do
  @books = Book.all
  erb(:"book/books")
end

get '/books/add' do
  @books = Book.all
  erb(:"book/add_book")
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
