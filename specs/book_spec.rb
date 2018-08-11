require('minitest/autorun')
require('minitest/rg')

require_relative('../models/book.rb')

class TestBook < MiniTest::Test

  def setup
    @book1 = Book.new(1, "The Burgess Boys", "Literary Fiction", "Elizabeth Strout", "With a rare combination of brilliant storytelling, exquisite prose, and remarkable insight into character, Elizabeth Strout has brought to life two deeply human protagonists whose struggles and triumphs will resonate with readers long after they turn the final page.", 5, 3, 10)
  end

  def test_can_get_title
    assert_equal("The Burgess Boys", @book1.title)
  end

  def test_can_get_genre
    assert_equal("Literary Fiction", @book1.genre)
  end

  def test_can_get_author
    assert_equal("Elizabeth Strout", @book1.author)
  end

  def test_can_get_description
    assert_equal("With a rare combination of brilliant storytelling, exquisite prose, and remarkable insight into character, Elizabeth Strout has brought to life two deeply human protagonists whose struggles and triumphs will resonate with readers long after they turn the final page.", @book1.description)
  end

  def test_can_get_quantity
    assert_equal(5, @book1.quantity)
  end

  def test_can_get_cost_price
    assert_equal(3, @book1.cost_price)
  end

  def test_can_get_selling_price
    assert_equal(10, @book1.selling_price)
  end




end
