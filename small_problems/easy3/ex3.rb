# Write a program that asks user for an input of a word or multiple words
#
# Give back the number of characters, spaces should not be counted

print("Please write word or multiple words: ")
input = gets.chomp

count = input.split.join.size
puts("There are #{count} characters in \"#{input}\"")
