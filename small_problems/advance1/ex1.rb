=begin

Plug in a selection of randomized nouns, verbs, adjectives, adverbs

=end

SAMPLES = {
  adjectives: ['quick', 'lazy', 'sleepy', 'ugly'],
  nouns: ['fox', 'dog', 'head', 'leg'],
  verbs: ['jumps', 'lifts', 'bites', 'licks'],
  adverb: ['easily', 'lazily', 'noisily', 'excitedly']
}

def madlib
  puts "The #{SAMPLES[:adjectives].sample} brown #{SAMPLES[:nouns].sample} #{SAMPLES[:adverb].sample} #{SAMPLES[:verbs].sample} 
  the #{SAMPLES[:adjectives].sample} yellow
  #{SAMPLES[:nouns].sample}, who #{SAMPLES[:adverb].sample} #{SAMPLES[:verbs].sample} his
  #{SAMPLES[:nouns].sample} and looks around."
end

madlib()