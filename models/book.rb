class Book

  attr_reader :id
  attr_accessor :title, :genre, :author_id, :description, :quantity, :cost_price, :selling_price

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @genre = options['genre']
    @author_id = options['author_id']
    @description = options['description']
    @quantity = options['quantity'].to_i
    @cost_price = options['cost_price'].to_i
    @selling_price = options['selling_price'].to_i

  end

  def calculate_markup()
    markup = @selling_price - @cost_price
    return markup
  end

  def stock_level_counter
    if @quantity == 0
      return "Out of Stock"
    elsif @quantity <= 2
      return "Low Stock"
    elsif @quantity >= 3 && @quantity <= 8
      return "Stock Level Good"
    else return "Stock Level High"
    end
  end

  def stock_level_counter_colour
    if @quantity == 0
      return "out_of_stock"
    elsif @quantity <= 2
      return "low_stock"
    elsif @quantity >= 3 && @quantity <= 8
      return "stock_level_good"
    else return "stock_level_high"
    end
  end

  def save()
    sql = "INSERT INTO books (title, genre, author_id, description, quantity, cost_price, selling_price) VALUES ($1, $2, $3, $4, $5, $6, $7) RETURNING id"
    values = [@title, @genre, @author_id, @description, @quantity, @cost_price, @selling_price]
    book = SqlRunner.run(sql, values).first
    @id = book['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM books"
    books = SqlRunner.run(sql)
    result = books.map {|book| Book.new(book)}
    return result
  end

  def self.find_by_id(id)
    sql = "SELECT * FROM books WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values).first
    return book = Book.new(result)
  end

  def update()
    sql = "UPDATE books SET (title, genre, author_id, description, quantity, cost_price, selling_price) = ($1, $2, $3, $4, $5, $6, $7) WHERE id = $8"
    values = [@title, @genre, @author_id, @description, @quantity, @cost_price, @selling_price, @id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM books"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM books WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def find_author()
    sql = "SELECT authors.* FROM authors WHERE id = $1"
    values = [@author_id]
    result = SqlRunner.run(sql, values).first
    author = Author.new(result)
    return author
  end
  # SELECT * FROM books WHERE lower(title) LIKE '%amy%'; works in psql
  def self.find_by_title(params)
    sql = "SELECT * FROM books WHERE lower(title) LIKE $1"
    params = "%" + params + "%"
    values = [params]
    books = SqlRunner.run(sql, values)
    result = books.map {|book| Book.new(book)}
    return result
  end

  def self.find_by_genre(genre)
    sql = "SELECT * FROM books WHERE genre = $1"
    values = [genre]
    books = SqlRunner.run(sql, values)
    result = books.map {|book| Book.new(book)}
    return result
  end

end
