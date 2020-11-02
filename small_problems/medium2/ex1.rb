=begin 

Problem:
- Program reads the file and prints the longest sentece also print num of words
- Sent may end with '.' '!' '?'

Input: str
Output: str

Algorithm:
- Iterate over each char of the string
  keep on adding each letter, to a local var str
  when we hit '.' or '!' or '?', append the collected sentence to an array of
  sentences, and proceed until string is over
- Map destructively the array of sentences, splitting each sent into an array 
    of words
- Sort the resulting array by the size of each inner array (num of words)
=end

def longest_sent(string)
  breakers = ['.', '!', '?']
  sentences = []
  str = ''
  string.each_char do |char|
    if breakers.include?(char)
      sentences << str  
      str = ''
    else  
      str += char
    end 
  end
  sentences.map! { |sent| sent.split }
  final = sentences.sort_by { |sent| sent.size}

  final[-1].size
end

p longest_sent('Four score and seven years ago our fathers brought forth
  on this continent a new nation, conceived in liberty, and
  dedicated to the proposition that all men are created
  equal.
  
  Now we are engaged in a great civil war, testing whether
  that nation, or any nation so conceived and so dedicated,
  can long endure. We are met on a great battlefield of that
  war. We have come to dedicate a portion of that field, as
  a final resting place for those who here gave their lives
  that that nation might live. It is altogether fitting and
  proper that we should do this.
  
  But, in a larger sense, we can not dedicate, we can not
  consecrate, we can not hallow this ground. The brave
  men, living and dead, who struggled here, have
  consecrated it, far above our poor power to add or
  detract. The world will little note, nor long remember
  what we say here, but it can never forget what they
  did here. It is for us the living, rather, to be dedicated
  here to the unfinished work which they who fought
  here have thus far so nobly advanced. It is rather for
  us to be here dedicated to the great task remaining
  before us -- that from these honored dead we take
  increased devotion to that cause for which they gave
  the last full measure of devotion -- that we here highly
  resolve that these dead shall not have died in vain
  -- that this nation, under God, shall have a new birth
  of freedom -- and that government of the people, by
  the people, for the people, shall not perish from the
  earth.')