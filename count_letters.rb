def count_letters(the_word)
  the_word.gsub!(/[\s]/, "")

  the_hash = {}

  the_word.split("").each do |the_letter|
    the_hash[the_letter] ||=0
    the_hash[the_letter] +=1
  end

  the_hash
end

def letter_indices(the_word)
  the_hash = {}
  the_word.gsub(/[\s]/,"").split("").each.with_index do |the_letter, the_index|
    the_hash[the_letter] ||=[]
    the_hash[the_letter].push(the_index)
  end
  the_hash
end

puts "enter word"
puts count_letters(gets.chomp).inspect

puts "enter word"
puts letter_indices(gets.chomp).inspect
