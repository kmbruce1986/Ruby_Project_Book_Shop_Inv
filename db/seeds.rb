require('pry-byebug')

require_relative('../models/author.rb')
require_relative('../models/book.rb')

Author.delete_all

author1 = Author.new({
  'first_name' => "Elizabeth",
  'last_name' => "Strout"
})

author1.save

book1 = Book.new({
  'title' => "The Burgess Boys",
  'genre' => "Literary Fiction",
  'author_id' => author1.id,
  'description' => "With a rare combination of brilliant storytelling, exquisite prose, and remarkable insight into character, Elizabeth Strout has brought to life two deeply human protagonists whose struggles and triumphs will resonate with readers long after they turn the final page.",
  'quantity' => 5,
  'cost_price' => 3,
  'selling_price' => 10
  })

book1.save








binding.pry
nil
