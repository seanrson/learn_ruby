class Book
    attr_reader :title

    def title=(new_title)
        key_words = ["the", "a", "an", "and", "in", "the", "of"]
        words = new_title.split(" ")
        new_title = ""
        index = 0
        for w in words do
            if (!key_words.include?(w) || index == 0)
                word = capitalize(w)
            else
                word = w
            end
            new_title += "#{word} "
            index+=1
        end
        new_title = "#{new_title[0...-1]}" ## remove trailing space
        @title = new_title
    end


    def capitalize(str)
        if (str.length == 1) ## prevent out of bounds error
            return "#{str.upcase}"
        end
        return "#{str[0].upcase}#{str[1...]}"
    end
end