#write your code here
def translate_word(word)
    vowels = ["a","e","i","o","u","A","E","I","O","U"]

    for i in vowels do ## starts with vowel
        if (word[0] == i)
            new_word = "#{word}ay"
            return new_word
        end
    end

    new_word = word
    hit_vowel = false ## starts with consonant, look for first vowel
    index = 1
    while (index < word.length) do ## loop through letters
        for v in vowels do ## current letter a vowel?
            if (word[index] == v)
                if (word[index] != "u" && word[index] != "U") ## treat "u" as part of preceding phoneme
                    hit_vowel = true
                end
            end
        end
        if (hit_vowel) ## hit a vowel?
            new_word = "#{word[index...]}#{word[0...index]}ay"
            puts index
            return new_word
        end
        index+=1
    end
end

def translate(msg)
    words = msg.split(" ")
    new_msg = ""
    for w in words do ## translate words
        new_msg += "#{translate_word(w)} "
    end
    new_msg = new_msg[0...-1] ## get rid of trailing space
    return new_msg
end
puts translate("Bbanana")