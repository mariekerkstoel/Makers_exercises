# There is an array of strings below. Write a program that:
# * Prints all the strings out, each one on a separate line, except it:
#   * Doesn't print any string that is in all UPPERCASE letters.
#   * Prints `Less than 4` and then all the strings that are less than 4 characters long.
#   * Prints `4 to 6` and then all the strings that are 4, 5 or 6 characters long.
#   * Prints `More than 6` and then all the strings than are more than 6 characters long.

strings = ["giraffe", "ox", "LION", "tiger", "ape", "snake", "LEOPARD"]

# You can put your code here!

def print_strings(strings)

  below = strings.select{|x|
  x.length < 4 && x != x.upcase}
  puts "Less than 4"
  puts below

  between = strings.select{|y|
  4 < y.length && y.length < 6 && y != y.upcase }
  puts "4 to 6"
  puts between

  more = strings.select{|z|
  z.length > 6 && z != z.upcase}
  puts "More than 6"
  puts more

end
print_strings(strings)
