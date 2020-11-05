

array = ["alpha", "beta", "omega"]
hash = {}
array.each do |element|
   hash[element] = element.upcase
end
return hash
print hash
