require 'test/unit'
require_relative '../reverse_words_inplace.rb'

def run_tests
  desc = 'one word'
  message = 'vault'
  reverse_words!(message)
  expected = 'vault'
  assert_equal(message, expected, desc)

  desc = 'two words'
  message = 'thief cake'
  reverse_words!(message)
  expected = 'cake thief'
  assert_equal(message, expected, desc)

  desc = 'three words'
  message = 'one another get'
  reverse_words!(message)
  expected = 'get another one'
  assert_equal(message, expected, desc)

  desc = 'multiple words same length'
  message = 'rat the ate cat the'
  reverse_words!(message)
  expected = 'the cat ate the rat'
  assert_equal(message, expected, desc)

  desc = 'multiple words different lengths'
  message = 'yummy is cake bundt chocolate'
  reverse_words!(message)
  expected = 'chocolate bundt cake is yummy'
  assert_equal(message, expected, desc)

  desc = 'empty string'
  message = ''
  reverse_words!(message)
  expected = ''
  assert_equal(message, expected, desc)
end

def assert_equal(a, b, desc)
  puts "#{desc} ... #{a == b ? 'PASS' : "FAIL: #{a.inspect} != #{b.inspect}"}"
end

run_tests