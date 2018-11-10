class Book
    attr_accessor :title
    def titlelize name=title
        puncs = ["and", "the", "to", "of", "by", "from", "or","over","in","an","a"]
        name = name.split(" ")
        name.map! do |i|
            if (puncs.include? i.downcase) && (name.index(i)!=0)
                i.downcase
            else
                i.capitalize
            end
        end
        name=name.join(" ")
        name
    end
    def title=(title)
        @title=titlelize(title)
    end
end
