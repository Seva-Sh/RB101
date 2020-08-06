# A method that takes an array of strings,
# and returns a string that is all those strings concatenated together

# CASUAL

=begin

Given an array of strings

Create a method with one parameter
  Create a variable that will save the collection of strings
  Iterate through the array one by one
    Add (concatenate) the value to the created variable
  Return the variable

=end

# FORMAL

=begin

START

Given an array of strings called "strings"

CREATE a method(one parameter)
  SET strings_added = nil
  SET iterator = 1

  WHILE iterator <= number of strings
    strings_added += current_string
    iterator += 1
  RETURN strings_added

PRINT method(strings)

END

=end
