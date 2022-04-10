require 'tty-prompt'

# 
ruby_syntax = [
    {question: 'Given an array called dogs, how would you access the third element of the array?', solution: 'dogs(3)', difficulty: 2},
    {question: 'What method allows hashes to be accessed by index as if they were an array?', solution: '.values', difficulty: 2},
    {question: 'What are the three main logical operators', solution: 'and (&&), or (||), not (!)', difficulty: 2}
]
 
def draw_card(deck_size)
    return rand(deck_size)
end

def show_question(deck, index)
    puts (deck[index])[:question]
end

def show_solution(deck, index)
    puts "Solution: #{(deck[index])[:solution]}"
end

def rate_difficulty(deck, index)
    prompt = TTY::Prompt.new
    difficulty = prompt.select('Rate the difficulty of the card', %w[Easy Moderate Hard])
    if difficulty == 'Easy'
        deck[index][:difficulty] = 1
    elsif difficulty == 'Moderate'
        deck[index][:difficulty] = 2
    elsif difficulty == 'Hard'
        deck[index][:difficulty] = 3
    end
    puts "The difficulty of the card has been changed to #{(deck[index])[:difficulty]}"
end

def study(deck, questions)
    i = 0
    while i < questions
        card = draw_card(deck.length)
        show_question(deck, card)
        puts 'Enter your answer'
        user_answer = gets.chomp
        show_solution(deck, card)
        rate_difficulty(deck, card)
        i += 1
    end
end


puts "Welcome to Flashy - the flashcard study tool"
prompt = TTY::Prompt.new
input = prompt.select('Select a deck to study', %w[Ruby-Syntax])
if input == 'Ruby-Syntax'
    puts 'You have chosen to study ruby syntax, how many questions would you like to attempt?'
    num_questions = gets.chomp.to_i
    study(ruby_syntax, num_questions)
end

