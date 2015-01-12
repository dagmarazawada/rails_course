def sum_left(a,index)
   sum = 0
   for i in 0..index
        sum+=a[i]
   end
   sum
end

def sum_right(a,index)
   sum = 0
   for i in index..a.length-1
        sum+=a[i]
   end
   sum
end

def solution(a)
    return -1 if a.length ==0
    for i in 0..a.length-1 do
        left = sum_left(a,i-1)
        right = sum_right(a,i+1)
        return i if left ==right
    end
    return -1
end
