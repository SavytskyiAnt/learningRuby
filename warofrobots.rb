

@arr1 = Array.new(10,1)
@arr2 = Array.new(10,1)


def attack(arr)

  i = rand(0..9)
   if arr[i] == 1
      arr[i] = 0
      puts "робот под номером #{ i+1 } уничтожен"
   else
     puts "Промазал по роботу #{ i+1 } "
  end

end


def victory?
  robots_left1 = @arr1.count {|x| x == 1}
  robots_left2 = @arr2.count {|x| x == 1}
 if robots_left1 == 0
   puts "Команда 2 победила , в команде осталось #{robots_left2} роботов "
   return true
end
if robots_left2 == 0
  puts "Команда 1 победила , в команде осталось #{robots_left1} роботов "
  return false
end
false
end

def stats (x)
  cnt1 = @arr1.count {|x| x == 1}
  cnt2 = @arr2.count {|x| x == 1}
  if x == 1
  puts "Первая команда: #{cnt1} роботов в строю"
end
if x == 2
  puts "Вторая команда: #{cnt2} роботов в строю"
end
end


#########################################################
# j=0
loop do

  #  j+=1
  # exit if j == 2

puts "первая команда наносит удар"
attack(@arr2)
exit if victory?
stats (1)
puts "осталось роботов в первой команде #{@arr1}"
puts""

puts "вторая команда наносит удар"
attack(@arr1)
exit if victory?
stats (2)
puts "осталось роботов во второй команде #{@arr2}"
puts ""
end
