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
    @cost_price = options['cost_price']
    @selling_price = options['selling_price']

  end

  def calculate_markup()
    markup = @selling_price - @cost_price
    return markup
  end

  def save()
    sql = "INSERT INTO books (title, genre, author_id, description, quantity, cost_price, selling_price) VALUES ($1, $2, $3, $4, $5, $6, $7) RETURNING id"
    values = [@title, @genre, @author_id, @description, @quantity, @cost_price, @selling_price]
    book = SqlRunner.run(sql, values).first
    @id = book['id'].to_i
  end


end
