puts "hello Anton"


comandaOne=Array.new(10,1)
comandaTwo=Array.new(10,1)


#стреляет первая команда

shot = rand(1..10)

if comandaOne[shot] == 1
   comandaOne[shot] = 0
   puts "робот под номером #{shot} убит "
else
  puts "Промзали"

end



#стреляет вторая команда
