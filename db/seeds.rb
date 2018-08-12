require('pry-byebug')

require_relative('../models/author.rb')
require_relative('../models/book.rb')

Book.delete_all
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

book2 = Book.new({
  'title' => "Amy & Isabelle",
  'genre' => "Literary Fiction",
  'author_id' => author1.id,
  'description' => "In her stunning first novel Amy and Isabelle, Elizabeth Strout evokes a teenager's alienation from her distant mother—and a parent's rage at the discovery of her daughter's secrets. ",
  'quantity' => 2,
  'cost_price' => 2,
  'selling_price' => 8
  })

book2.save

book3 = Book.new({
  'title' => "Olive Kitteridge",
  'genre' => "Literary Fiction",
  'author_id' => author1.id,
  'description' => "At times stern, at other times patient, at times perceptive, at other times in sad denial, Olive Kitteridge, a retired schoolteacher, deplores the changes in her little town of Crosby, Maine. ",
  'quantity' => 6,
  'cost_price' => 4,
  'selling_price' => 10
  })

book3.save








binding.pry
nil
