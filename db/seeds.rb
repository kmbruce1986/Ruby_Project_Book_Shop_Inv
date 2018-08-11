require('pry-byebug')

require_relative('../models/author.rb')

author1 = Author.new({
  'first_name' => "Elizabeth",
  'last_name' => "Strout"
})

author1.save









binding.pry
nil
