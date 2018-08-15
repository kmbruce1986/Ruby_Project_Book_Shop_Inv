require('pg')
require_relative('../db/sql_runner.rb')

class Author

  attr_reader :id
  attr_accessor :name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']

  end

  # def pretty_name
  #   return "#{first_name} #{last_name}"
  # end

  def save()
    sql = "INSERT INTO authors (name) VALUES ($1) RETURNING id"
    values = [@name]
    author = SqlRunner.run(sql, values).first
    @id = author['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM authors"
    authors = SqlRunner.run(sql)
    result = authors.map {|author| Author.new(author)}
    return result
  end

  def self.find_by_id(id)
    sql = "SELECT * FROM authors WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values).first
    return author = Author.new(result)
  end

  def update()
    sql = "UPDATE authors SET name = $1 WHERE id = $2"
    values = [@name, @id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM authors"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM authors
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def find_books()
    sql = "SELECT books.* FROM books WHERE books.author_id = $1"
    values = [@id]
    books = SqlRunner.run(sql, values)
    result = books.map {|book| Book.new(book)}
    return result
  end

  def self.find_by_name(params)
    sql = "SELECT * FROM authors WHERE lower(name) LIKE $1"
    params = "%" + params + "%"
    values = [params]
    authors = SqlRunner.run(sql, values)
    result = authors.map {|author| Author.new(author)}
    return result
  end

end
