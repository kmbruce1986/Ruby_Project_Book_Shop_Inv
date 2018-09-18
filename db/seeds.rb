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

author4 = Author.new({
  'name' => "Matt Haig"
})

author4.save

author5 = Author.new({
  'name' => "James Robertson"
})

author5.save

author6 = Author.new({
  'name' => "Louise Candlish"
})

author6.save

author7 = Author.new({
  'name' => "Maja Lunde"
})

author7.save

author8 = Author.new({
  'name' => "Celeste Ng"
})

author8.save

author9 = Author.new({
  'name' => "Kirsty Logan"
})

author9.save

author10 = Author.new({
  'name' => "Fiona Mosley"
})

author10.save


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
  'quantity' => 9,
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

book7 = Book.new({
  'title' => "Elmet",
  'genre' => "Literary Fiction",
  'author_id' => author10.id,
  'description' => "This dark debut about a family living on the outskirts of society is an impressive slice of contemporary noir steeped in Yorkshire legend.",
  'quantity' => 5,
  'cost_price' => 3.5,
  'selling_price' => 8.5
  })

book7.save

book8 = Book.new({
  'title' => "The Humans",
  'genre' => "Science Fiction",
  'author_id' => author4.id,
  'description' => "When an extraterrestrial arrives on Earth, his first impressions of humans are less than positive. Taking the form of Professor Andrew Martin at Cambridge University, the visitor is eager to complete his task and hurry back to his own utopian planet. ",
  'quantity' => 3,
  'cost_price' => 4,
  'selling_price' => 9.5
  })

book8.save

book9 = Book.new({
  'title' => "The Gracekeepers",
  'genre' => "Magic Realism",
  'author_id' => author9.id,
  'description' => "Inspired in part by Scottish myths and fairytales, The Gracekeepers tells a modern story of an irreparably changed world: one that harbors the same isolation and sadness, but also joys and marvels of our own age.",
  'quantity' => 7,
  'cost_price' => 4.5,
  'selling_price' => 12
  })

book9.save

book10 = Book.new({
  'title' => "Little Fires Everywhere",
  'genre' => "Literary Fiction",
  'author_id' => author8.id,
  'description' => "Everyone in Shaker Heights was talking about it that summer: how Isabelle, the last of the Richardson children, had finally gone around the bend and burned the house down.",
  'quantity' => 6,
  'cost_price' => 5,
  'selling_price' => 9.5
  })

book10.save

book11 = Book.new({
  'title' => "Everything I Never Told You",
  'genre' => "Literary Fiction",
  'author_id' => author8.id,
  'description' => "Lydia is the favorite child of Marilyn and James Lee, and her parents are determined that she will fulfill the dreams they were unable to pursue. But when Lydia’s body is found in the local lake, the delicate balancing act that has been keeping the Lee family together is destroyed, tumbling them into chaos.",
  'quantity' => 5,
  'cost_price' => 4.5,
  'selling_price' => 8
  })

book11.save

book12 = Book.new({
  'title' => "The Testament of Gideon Mack",
  'genre' => "Literary Fiction",
  'author_id' => author5.id,
  'description' => "For Gideon Mack, faithless minister, unfaithful husband and troubled soul, the existence of God, let alone the Devil, is no more credible than that of ghosts or fairies. Until the day he falls into a gorge and is rescued by someone who might just be Satan himself.",
  'quantity' => 4,
  'cost_price' => 3.4,
  'selling_price' => 8.99
  })

book12.save

book13 = Book.new({
  'title' => "The Fanatic",
  'genre' => "Literary Fiction",
  'author_id' => author5.id,
  'description' => "It is Spring 1997 and Hugh Hardie needs a ghost for his Tours of Old Edinburgh. Andrew Carlin is the perfect candidate. So, with cape, stick and a plastic rat, Carlin is paid to pretend to be the spirit of Colonel Weir and to scare the tourists. But who is Colonel Weir, executed for witchcraft in 1670.",
  'quantity' => 1,
  'cost_price' => 2.9,
  'selling_price' => 9.5
  })

book13.save

book14 = Book.new({
  'title' => "Our House",
  'genre' => "Thriller",
  'author_id' => author6.id,
  'description' => "On a bright January morning in the London suburbs, a family moves into the house they’ve just bought in Trinity Avenue.  Nothing strange about that. Except it is your house. And you didn’t sell it. ",
  'quantity' => 4,
  'cost_price' => 3.5,
  'selling_price' => 8.5
  })

book14.save

book15 = Book.new({
  'title' => "The History of Bees",
  'genre' => "Literary Fiction",
  'author_id' => author7.id,
  'description' => "This dazzling and ambitious literary debut follows three generations of beekeepers from the past, present, and future, weaving a spellbinding story of their relationship to the bees and to their children and one another against the backdrop of an urgent, global crisis.",
  'quantity' => 2,
  'cost_price' => 1.0,
  'selling_price' => 5.6
  })

book15.save

book16 = Book.new({
  'title' => "My Name is Lucy Barton",
  'genre' => "Literary Fiction",
  'author_id' => author1.id,
  'description' => "Lucy Barton is recovering slowly from what should have been a simple operation. Her mother, to whom she hasn't spoken for many years, comes to see her.",
  'quantity' => 0,
  'cost_price' => 4.5,
  'selling_price' => 7.5
  })

book16.save

book17 = Book.new({
  'title' => "How to Stop Time",
  'genre' => "Science Fiction",
  'author_id' => author4.id,
  'description' => "A love story across the ages - and for the ages - about a man lost in time, the woman who could save him, and the lifetimes it can take to learn how to live.",
  'quantity' => 1,
  'cost_price' => 4.5,
  'selling_price' => 6.5
  })

book17.save

book18 = Book.new({
  'title' => "Harry Potter and the Prisoner of Azkaban",
  'genre' => "Fantasy",
  'author_id' => author2.id,
  'description' => "Harry Potter's third year at Hogwarts is full of new dangers. A convicted murderer, Sirius Black, has broken out of Azkaban prison, and it seems he's after Harry. Now Hogwarts is being patrolled by the dementors, the Azkaban guards who are hunting Sirius. ",
  'quantity' => 3,
  'cost_price' => 5.4,
  'selling_price' => 11.5
  })

book18.save

book19 = Book.new({
  'title' => "And The Land Lay Still",
  'genre' => "Literary Fiction",
  'author_id' => author5.id,
  'description' => "Michael Pendreich is curating an exhibition of photographs by his late, celebrated father Angus for the National Gallery of Photography in Edinburgh. The show will cover fifty years of Scottish life but, as he arranges the images and writes his catalogue essay, what story is Michael really trying to tell: his father's, his own or that of Scotland itself?",
  'quantity' => 2,
  'cost_price' => 4.5,
  'selling_price' => 8.99
  })

book19.save

book20 = Book.new({
  'title' => "Harry Potter and the Dealthy Hallows",
  'genre' => "Fantasy",
  'author_id' => author2.id,
  'description' => "Harry Potter is leaving Privet Drive for the last time. But as he climbs into the sidecar of Hagrid’s motorbike and they take to the skies, he knows Lord Voldemort and the Death Eaters will not be far behind.",
  'quantity' => 4,
  'cost_price' => 5.6,
  'selling_price' => 12.10
  })

book20.save






binding.pry
nil
