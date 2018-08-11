class Book

  attr_reader :id
  attr_accessor :title, :genre, :author, :description, :quantity, :cost_price, :selling_price

  def initialize(id, title, genre, author, description, quantity, cost_price, selling_price)
    @id = id
    @title = title
    @genre = genre
    @author = author
    @description = description
    @quantity = quantity
    @cost_price = cost_price
    @selling_price = selling_price

  end

  def calculate_markup()
    markup = @selling_price - @cost_price
    return markup
  end

end
