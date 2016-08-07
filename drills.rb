#########################
#### USING ARGUMENTS ####
#########################
#say_hello
  # returns 'hello'
def say_hello
  "hello"
end

#echo
  # returns the input string
def echo(str)
  str
end

#eddie_izzards_height
  # calculates and returns Eddie Izzard's height
  # takes in the height of heels he's wearing (default value: 0)
  # and adds heel height to his base 67 inches for the result
def eddie_izzards_height(heel_height=0)
  base = 67
  base + heel_height
end

#how_many_args
  # accepts any number of arguments without complaint
  # returns the total number of arguments passed to the function
  # Hint: google ruby *args
def how_many_args(*args)
  args.length
end

#find_answer
  # returns the value associated with the 'answer' keyword argument
  # returns nil if it cannot find the 'answer' keyword argument
  # complains when given non-keyword arguments
  # Hint: google ruby keyword arguments
def find_answer(answer: nil, fish: nil)
  answer
end

##############################
#### MANIPULATING STRINGS ####
##############################
#first_char
  # takes in a word
  # returns the first letter of the word
  # lowercases the first letter of the word
def first_char(word)
  word[0].downcase
end

#polly_wanna
  # takes in a word
  # echoes the original word
  # repeats the original word 3 times
  # returns a string with the word repeated
def polly_wanna(word)
  word*3
end

#count_chars
  # takes in a word
  # returns the number of characters in the word
def count_chars(word)
  word.chars.length
end

#yell
  # takes in a message
  # convert the message to uppercase
  # adds an exclamation point to the end of the message
  # returns the message
def yell(message)
  message.upcase + "!"
end

## STRETCH ##
#to_telegram
  # takes in a message
  # replaces periods with ' STOP'
  # returns the updated message
def to_telegram(message)
  message.gsub!(".", " STOP")
end

#spell_out
  # takes in a string
  # converts the string to lowercase
  # returns the input string, with characters seperated by dashes
def spell_out(str)
  arr = str.downcase.split("")
  arr.join("-")
end

#seperate
  # takes in a string
  # seperates characters with a custom seperator, when supplied with one
  # seperates characters with dashes (by default)
  # returns the modified string
def seperate(str, seperator="-")
  str.split("").join(seperator)
end

## STRETCH ##
#croon
  # seperates word characters with dashes
  # preserves whitespace between words
def croon(phrase)
  phrase.split(" ").map do |word| word.split("").join("-") end.join(" ")
end

#palindrome_word?
  # determines whether a single word is a palindrome
  # ignores case
  # returns true or false
def palindrome_word?(word)
  word.downcase!
  if word == word.reverse then true
  else
    false
  end
end

## SUPER STRETCH ##
#palindrome_sentence?
  # determines whether a sentence is a palindrome
  # ignores case
  # ignores whitespace
  # ignores punctuation

#is_vowel
  # takes in a string of one character
  # determines whether the character is a vowel
  # ignores case
  # handles weird inputs gracefully

#add_period
  # takes in a string
  # adds a period to the end of the sentence
  # does not add a period if one is already there
  # does not add a period if any form of terminal punctuation is present
  # returns the sentence


###########################
#### LOOPS & ITERATORS ####
###########################
#count_spaces
  # takes in a string
  # counts the spaces in a string
  # returns number of spaces
# LONG WAY:
# def count_spaces(str)
#   count = 0
#   space = " "
#   str.each_char do |c|
#     if c == space
#       count += 1
#     end
#   end
#   count
# end
def count_spaces(str)
  str.count("/\s/")
end

#string_lengths
  # takes in an array of strings
  # returns an array containing the lengths of the strings
def string_lengths(arr)
  nums = []
  arr.each { |str| nums << str.length }
  nums
end

#remove_falsy_values
  # takes in a list
  # filters out falsy values from a list
  # returns the updated list
def remove_falsy_values(list)
  list.reject do |i| i == false || i == nil end
end

#exclude_last
  # takes in an array or string
  # removes the last item from the array or string
  # returns it
def exclude_last(something)
  something[0...-1]
end

#exclude_first
  # takes in an array or string
  # removes the first item from an array
  # removes the first character from a string
  # returns a new string - does not alter the original input (non-destructive)
def exclude_first(thing)
  thing[1..-1]
end

#exclude_ends
  # takes in an array or string
  # removes the first and last items from an array
  # removes the first and last characters from a string
def exclude_ends(thing)
  thing[1...-1]
end

#select_every_even
  # takes in an array
  # returns a list of even-indexed items from the input
def select_every_even(arr)
  even_arr = []
  arr.map.with_index do |item, i|
    even_arr.push(item) if i.even?
  end
  even_arr
end

#select_every_odd
  # takes in an array
  # returns a list of odd-indexed items
def select_every_odd(arr)
  arr.select.with_index { |item, index| item if index.odd? }
end

#select_every_n
  # takes in an array
  # returns a list of items at an index evenly divisible by n
  # defaults to an n value of 1
def select_every_n(arr, n=1)
  arr.select.with_index do |item, index| item if index%n==0 end
end

## STRETCH ##
#compile_agenda
  # converts a list of agenda items into a single string
  # titles start with a bullet ("*") and are separated by line breaks ("/n")
  # sorts items by priority ascending (low to high) by default
  # sort order can (optionally) be changed to priority descending
  # the bullet can (optionally) be changed to any symbol
def compile_agenda(list)
  sorted_list = list.sort_by do |item| item[:priority] end
  sorted_list
end

##############################
#### MANIPULATING NUMBERS ####
##############################
#count_to
  # takes in a number
  # returns an array containing every integer from 0 to n
  # counts up or down
  # rounds off decimals
def count_to(n)
  if n > 0
    0.upto(n.floor).to_a
  else
    0.downto(n.ceil).to_a
  end
end

#is_integer?
  # takes in a number
  # returns true for Fixnums and Bignums (whole number or 'integer' types)
  # returns true for Floats (decimals) equal to integers
  # returns false for non-integer decimals
  # returns false for Float::NAN
  # returns false for non-numbers
def is_integer?(num)
  num.class == Fixnum || num.class == Bignum || ( num.is_a?(Float) && !num.nan? && num == num.to_i)
end

#is_prime?
  # takes in a number and checks if it's prime
  # returns false for non-integer decimals
  # returns false for numbers less than or equal to 1
  # returns false for numbers divisible by anything but 1 and themselves
  # returns true for prime numbers
  # Hint: google prime numbers!
def is_prime?(num)
  if num <= 1 || !is_integer?(num)
    false
  else
    (2...num).each do |i|
      if num % i == 0
        return false
      end
    end
    true
  end
end

#primes_less_than
  # takes in a number
  # returns an empty array if there are no primes below num
  # does not return the number itself
  # finds all primes less than the given number
def primes_less_than(num)
  primes = []
  (2...num).each do |n|
    if is_prime?(n)
      primes.push(n)
    end
  end
  primes
end


## STRETCH ##
#iterative_factorial
  # takes in a number
  # returns 1 for 0 and 1
  # returns NaN for numbers less than 0
  # returns NaN for non-integers
  # calculates and returns the factorial of the input number
def iterative_factorial(num)
  if num < 0 || !is_integer?(num)
    return Float::NAN
  end
  constant = 1
  (1..num).each do |i| constant = constant * i end
  constant
end


##############################
#### MANIPULATING OBJECTS ####
##############################
#character_count
  # takes in a string
  # counts how many times each character appears in a string
  # ignores case
  # returns the hash
def character_count(str)
  char_count = Hash.new(0)
  str.downcase.each_char do |c| char_count[c] += 1 end
  char_count
end

## STRETCH ##
#word_count
  # takes in a string
  # counts how many times a word appears in a string
  # ignores case
  # ignores characters that are not in the sequence a-z
  # returns a hash with all the words and their counts
def word_count(str)
  hash = Hash.new(0)
  str.downcase.split(" ").each do |word|
    word = word.gsub(/[^a-z]/i, "")
    hash[word] += 1
  end
  hash
end


## STRETCH ##
#most_frequent_word
  # takes in a string
  # finds the word in a string that appears with the most frequency
def most_frequent_word(str)
  word_count(str).sort do |a,b| b[1] <=> a[1] end[0][0]
end
