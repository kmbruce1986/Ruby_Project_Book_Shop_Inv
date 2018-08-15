require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/author.rb' )

also_reload( '../models/*' )

get '/authors' do
  @authors = Author.all
  erb(:"author/authors")
end

get '/authors/add' do
  @authors = Author.all
  erb(:"author/add_author")
end

get '/authors/search' do
  erb (:"author/search")
end

get '/authors/search_results' do
@authors = Author.all
if params[:search]
  @authors = Author.find_by_name(params[:search])
end
erb (:"author/results")
end


post '/authors' do
  @authors = Author.new(params)
  @authors.save()
  redirect 'authors/add'
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

post '/authors/:id/delete' do
  @authors = Author.find_by_id(params[:id])
  @authors.delete
  redirect 'authors'
end
