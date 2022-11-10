# require 'pry-byebug'

def isogram?(string)
  original_length = string.length
  string_array = string.downcase.split

  # binding.pry

  unique_length = string_array.uniq.length
  original_length == unique_length
end

isogram?("Odin")

class Person
  attr_accessor :age, :first_name, :last_name
  def initialize(age, first_name, last_name)
    @age = age
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end
end

module MathHelper
  def multiply_by_two(num)
    num.to_i * 2
  end

  def exponent(a, b)
    a.to_f ** b.to_f
  end
end

class Calculator
  include MathHelper

  def square_root(num)
    exponent(num, 0.5)
  end
end

class Homework
  include MathHelper
end

hw = Homework.new
hw.multiply_by_two(2)

class BaseballPlayer
  def initialize(hits, walks, at_bats)
    @hits = hits
    @walks = walks
    @at_bats = at_bats
  end

  def batting_average
    (@hits / @at_bats).to_f
  end

  def on_base_percentage
    ((@hits + @walks) / @at_bats).to_f
  end
end

babe_ruth = BaseballPlayer.new(50, 20, 100)
babe_ruth.batting_average
babe_ruth.on_base_percentage