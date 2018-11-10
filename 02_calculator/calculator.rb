def add a,b
    return (a+b)
end
def subtract a,b
    return (a-b)
end
def multiply a,b
    return (a*b)
end
def power a,b
    number=1
    b.times do 
        number*=a
    end
    number
end
def sum numbers
    sum=0
    for i in numbers
        sum+=i
    end
    return sum
end
def factorial num
    if (num < 0) 
        return -1;
    elsif (num == 0) 
      return 1;
    else 
        return (num * factorial(num - 1));
    end
end
