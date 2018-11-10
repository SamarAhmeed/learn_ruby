def echo word
    word
end
def shout word
    word = word.upcase
    word
end
def repeat word,n=2
    "#{word} "*n
end
def start_of_word word,n
    word[0..(n-1)]
end
def first_word line
    first=""
    line.each_char do |i|
        if i==' '
            break;
        end
        first+=i
    end
    first
end
def titleiza line
    puncs = ["and", "the", "to", "of", "by", "from", "or","over"]
    line = line.split(" ")
    line.map! do |i|
        if (puncs.include? i.downcase) && (line.index(i)!=0)
            i.downcase
        else
            i.capitalize
        end
    end
    line=line.join(" ")
    line
end
