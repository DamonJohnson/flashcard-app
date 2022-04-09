require 'tty-prompt'

# 
ruby_syntax = [
    {question: 'Given an array called dogs, how would you access the third element of the array?', solution: 'dogs(3)', difficulty: 2},
    {question: 'What method allows hashes to be accessed by index as if they were an array?', solution: '.values', difficulty: 2},
    {question: 'What are the three main logical operators', solution: 'and (&&), or (||), not (!)', difficulty: 2}
]

def draw_card(deck_size)
    return 1+rand(deck_size)
end

def study(deck)
    puts 'You have chosen to study #{deck}'
    puts (deck[1])[:question]
end


puts "Welcome to Flashy - the flashcard study tool"
prompt = TTY::Prompt.new
input = prompt.select('Select a deck to study', %w[Ruby-Syntax])
if input == 'Ruby-Syntax'
    study(ruby_syntax)
end

