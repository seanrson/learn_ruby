#write your code here
def add(a,b)
    return a+b
end

def subtract(a,b)
    return a-b
end

def sum(nums)
    total = 0
    for n in nums do
        total += n
    end
    return total
end

def factorial(n)
    if (n==0) ## base case
        return 1
    end
    return n * factorial(n-1)
end