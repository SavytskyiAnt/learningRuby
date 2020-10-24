puts "hello Anton"


comandaOne=Array.new(10,1)
comandaTwo=Array.new(10,1)


#стреляет первая команда
loop do

shot = rand(0..9)
puts "стреляет первая команда"
if comandaOne[shot] == 1
   comandaOne[shot] = 0
   puts "робот под номером #{shot+1} убит "
else
  puts "Промaзали"
end

print comandaOne
puts ""


#считаем количество выживших
x=comandaOne.count{|x| x==1}
puts "осталось #{x} роботов в первой команде"
puts ""
#стреляет вторая команда
shot = rand(0..9)
puts "стреляет вторая команда"
if comandaTwo[shot] == 1
   comandaTwo[shot] = 0
   puts "робот под номером #{shot+1} убит "
else
  puts "Промaзали"
end

print comandaTwo
puts ""



#считаем количество выживших
y=comandaTwo.count{|y| y==1}
puts "осталось #{x} роботов во второ команде"
puts ""

case

when x == 0 || x == 0 && y == 1
  puts "выиграла вторая команда"
  return
when
     y == 0 || y == 0 && x == 1
     puts "выиграла первая команда"
     return
end
end
