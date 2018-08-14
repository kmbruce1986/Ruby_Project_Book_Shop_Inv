require('pry-byebug')

require_relative('../models/author.rb')
require_relative('../models/book.rb')

Book.delete_all
Author.delete_all

author1 = Author.new({
  'name' => "Elizabeth Strout"
})

author1.save

author2 = Author.new({
  'name' => "J.K. Rowling"
})

author2.save

author3 = Author.new({
  'name' => "Chloe Benjamin"
})

author3.save

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

book4 = Book.new({
  'title' => "Harry Potter and the Philosopher's Stone",
  'genre' => "Fantasy",
  'author_id' => author2.id,
  'description' => "Harry Potter is an ordinary boy who lives in a cupboard under the stairs at his Aunt Petunia and Uncle Vernon's house, which he thinks is normal for someone like him who's parents have been killed in a 'car crash'. ",
  'quantity' => 10,
  'cost_price' => 5,
  'selling_price' => 10
  })

book4.save

book5 = Book.new({
  'title' => "Harry Potter and the Chamber of Secrets",
  'genre' => "Fantasy",
  'author_id' => author2.id,
  'description' => "During a dinner party hosted by his uncle and aunt, Harry is visited by Dobby, a house-elf. Dobby warns Harry not to return to Hogwarts, the magical school for wizards that Harry attended the previous year. ",
  'quantity' => 4,
  'cost_price' => 4.5,
  'selling_price' => 11
  })

book5.save

book6 = Book.new({
  'title' => "The Immortalists",
  'genre' => "Literary Fiction",
  'author_id' => author3.id,
  'description' => "If you knew the date of your death, how would you live your life? It's 1969 in New York City's Lower East Side, and word has spread of the arrival of a mystical woman, a traveling psychic who claims to be able to tell anyone the day they will die.",
  'quantity' => 9,
  'cost_price' => 2.5,
  'selling_price' => 9.5
  })

book6.save







binding.pry
nil
