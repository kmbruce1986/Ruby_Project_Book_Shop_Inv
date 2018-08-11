class Book

  attr_reader :id
  attr_accessor :title, :genre, :author_id, :description, :quantity, :cost_price, :selling_price

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @genre = options['genre']
    @author_id = options['author']
    @description = options['description']
    @quantity = options['quantity'].to_i
    @cost_price = options['cost_price']
    @selling_price = options['selling_price']

  end

  def calculate_markup()
    markup = @selling_price - @cost_price
    return markup
  end



end
