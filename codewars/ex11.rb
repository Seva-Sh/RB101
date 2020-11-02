# Write a function that when given a URL as a string, parses out just the 
# domain name and returns it as a string. For example:

# domain_name("http://github.com/carbonfive/raygun") == "github" 
# domain_name("http://www.zombie-bites.com") == "zombie-bites"
# domain_name("https://www.cnet.com") == "cnet"


=begin 

Problem:
- Function should return the domain name from the given URL
- 
- 

Input: str
Output: str

Algorithm:
- Check if the string starts with 'h' or 'w'
    if with H, delete str[0..6]
    if with W, delete str[0..3]
- Iterate over the remaining string and add all characters until you hit
  the first dot

- 

=end

def domain_name(str)
  str = str.split('//')
  str = str[str.size - 1].split('.')
  str.delete('www')
  str[0]
end

p domain_name("http://www.google.com") == "google"
p domain_name("http://google.co.jp") == "google"
p domain_name("www.xakep.ru") == "xakep"
p domain_name("https://youtube.com") == "youtube"