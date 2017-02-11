def binary_search?(ary, lower, upper, element)
   return false if lower > upper
   mid = (lower+upper)/2
   if (ary[mid] == element)
     element
   elsif (element < ary[mid])
     binary_search?(ary, lower, mid-1, element)
   else
     binary_search?(ary, mid+1, upper, element)
   end
end