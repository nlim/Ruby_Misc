#!/usr/bin/ruby

require_relative 'book'
require_relative 'account'
require_relative 'transaction'

puts "Testing out the simple book class"
b = Book.new("ANAB12312", 33.80)
puts b
b.price = 50.00
puts b
b.price_in_cents = 4000
puts b
puts "Testing out the account transcation"
a = Account.new(40.00)
b = Account.new(50.00)
puts "a: #{a}"
puts "b: #{b}"
t = Transaction.new(a, b)
t.transfer(10.00)
puts "a: #{a}"
puts "b: #{b}"
