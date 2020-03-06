#write your code here
def echo(msg)
    return msg
end

def shout(msg)
    return msg.upcase
end

def repeat(msg, i=2)
    new_msg = msg
    (i-1).times do
        new_msg += " #{msg}"
    end
    return new_msg
end

def start_of_word(word, n)
    return word[0...n]
end

def first_word(msg)
    return msg.split(" ")[0]
end

def titleize(s)
    words = s.split.map do |word|
      if %w(the and over).include?(word)
        word
      else
        word.capitalize
      end
    end
    words.first.capitalize!
    words.join(" ")
end