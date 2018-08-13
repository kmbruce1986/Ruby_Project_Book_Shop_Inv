require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( 'models/author.rb' )
require_relative( 'models/book.rb' )

also_reload( 'models/*' )

get '/books' do
  @books = Book.all
  erb(:"book/books")
end

get '/authors' do
  @authors = Author.all
  erb(:"author/authors")
end

get '/authors/add' do
  @authors = Author.all
  erb(:"author/add_author")
end

post '/authors' do
  @authors = Author.new(params)
  @authors.save()
  redirect 'authors'
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

get '/authors/:id' do
  @books = Book.all
  @authors = Author.find_by_id(params[:id])
  erb (:"author/show_author")
end

get '/authors/:id/edit'  do
  @authors = Author.find_by_id(params[:id])
  erb (:"author/edit_author")
end

post '/authors/:id/update' do
  @authors = Author.new(params)
  @authors.update
  redirect 'authors'
end

post '/books/:id/delete' do
  @books = Book.find_by_id(params[:id])
  @books.delete
  redirect 'books'
end

post '/authors/:id/delete' do
  @authors = Author.find_by_id(params[:id])
  @authors.delete
  redirect 'authors'
end
