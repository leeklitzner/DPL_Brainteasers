require 'pry'


def main
  print `clear`
  puts "----PALINDROME CHECKER----"
  @word = gets.strip.downcase.gsub(" ", "").split("")
  check
end

def check
  reverse = []
  @word.each {|letter| reverse.unshift(letter) }
  if @word == reverse
    puts "Indeed it is a palindrome!"
  else
    puts "It is not a palindrome"
  end
end
