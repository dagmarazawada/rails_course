
def solution(a)
 return -1 if a.length ==0
 sum = a.inject(0) { |sum, p| sum + p }
 sum_left,sum_right = 0,0
 for i in 0..a.length-1 do
    sum_right = sum-sum_left-a[i]
    return i if sum_left ==sum_right
    sum_left +=a[i]
 end
 return -1
end

def 