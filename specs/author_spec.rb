require('minitest/autorun')
require('minitest/rg')

require_relative('../models/author.rb')

class TestAuthor < MiniTest::Test

  def setup
    @author1 = Author.new(1, "Elizabeth", "Strout")
  end

  def test_can_get_first_name
  assert_equal("Elizabeth", @author1.first_name)
  end

  def test_can_get_last_name
  assert_equal("Strout", @author1.last_name)
  end

end
