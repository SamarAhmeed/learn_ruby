def translate line
    vowels=['a','i','e','o']
    line = line.split(" ")
    line.map! do |word|
        newword=""
        if vowels.include? word[0]
            word+'ay'
        else
            word.length.times do |i|
                if vowels.include? word[i]
                    word=word.slice!(i..word.length-1)
                    break
                end
                newword+=word[i]
            end
            word+newword+'ay'
        end
    end
    line=line.join(" ")
end
