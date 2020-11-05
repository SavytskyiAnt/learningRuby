def nextEx(number)
  puts""
puts  number.to_s + "-"*80
end

nextEx(1)
p "Дан целочисленный массив.Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными."
arr = *109..122
print arr
puts ""
puts ""
even=[]
odd=[]

arr.each_with_index do |name,index|
      index.even? ? (even << name) : (odd << name)
end

puts "these are elements with even indices: #{even}"
puts "these are elements with odd indices#{odd}"

nextEx(2)

p "Дан целочисленный массив.Вывести номер первого из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ]."

print arr
puts ""
puts ""

arr.each_with_index do |name,i|
      if arr[0] < arr[i] && arr[-1] > arr[i]
        @j=i+1
        @i=i
        @el=arr[i]
        break
      end
end

puts " Element [#{@el}] satisfies the conditions. Number of elements '#{@j}', index : #{@i}"

nextEx(3)

 p "Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент.
 Первый и последний элементы массива не изменять."
  print arr
  puts ""

 arr3 = Array.new(arr)
 arr3.each_with_index do |name,i|
    unless ( i==0 || i == arr.length-1 )
        unless name.odd?
        arr3[i]=arr3[i]+arr3[0]
        end
    end
 end
 print arr3
 puts ""
nextEx(4)

p "Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний элемент.
 Первый и последний элементы массива не изменять."

 print arr
 puts ""

 arr4=Array.new

 arr.each_index do |i|
   case
   when i==0 || i == arr.length-1
     arr4 << arr [i]
   when  arr[i].odd?
     arr4<< arr[i]+arr.last
   else
    arr4<< arr[i]
   end
end
print arr4

nextEx(5)

 p "Дан целочисленный массив. Заменить все положительные элементы на значение минимального."

arr5 = (-7..5).to_a
arr5_1=[]
print arr5
puts""

      arr5.each do |n|
         n=arr5.min if n>0
         arr5_1 << n
      end

print arr5_1

nextEx(6)
p "Дан целочисленный массив. Заменить все отрицательные элементы на значение максимального."

arr6=Array.new(arr5)
arr6_1=[]

print arr6
puts""
    arr6.each do |n|
       n=arr6.max if n<0
       arr6_1 << n
    end
print arr6_1

nextEx(7)
p "Дан целочисленный массив. Осуществить циклический сдвиг элементов массива влево на одну позицию."

arr7=Array.new(arr)
arr7_1=[]
print arr7
puts""
  arr7_1=arr7.rotate()
print arr7_1
nextEx(8)

p "Дан целочисленный массив. Проверить, образуют ли элементы геометрическую прогрессию. Если да, то вывести знаменатель прогрессии, если нет - вывести nil."

arr7=Array.new


def geo_prog(a = 2, r, n)
  (0...n).map { |e| a * r ** e }
end
arr7 = geo_prog(a = 2, 7, 10)

  # arr7 = [2, 10, 50, 250, 1250, 250, 3997671250, 156250, 781250, 3906250]
arrRatio=[]


print arr7
puts""

  unless arr7.length <=2
          arr7.each_index do |i|
                    unless (arr7[i+1] == nil)
                          unless (arr7[i] == 0)
                            arrRatio << arr7[i+1] / arr7[i]
                          end
                    end
          end
   end

   if
arrRatio.uniq!.length<=1
  puts "denominator of progression:#{arrRatio}"
   else
  puts "nil"
end

nextEx(9)

print "Дан целочисленный массив. Найти количество его локальных максимумов."

arr9=Array.new(15){rand 60..293}

print arr9
puts""

def maxima (arr)
arr.each_cons(3).each_with_object([]) do |three, memo|
  memo << three[1] if three[1] > three.first && three[1] > three.last
 end
end

p arr9_1 = maxima(arr9)

amount = arr9_1.count
puts = arr9
puts "number of local maxima: #{amount}"


nextEx(10)

print  "Дан целочисленный массив. Найти минимальный из его локальных минимумов"

arr10=Array.new(15){rand 60..293}

print arr10
puts""

def minim (arr)
arr.each_cons(3).each_with_object([]) do |three, memo|
  memo << three[1] if three[1] < three.first && three[1] < three.last
 end
end

p arr10_1 = minim(arr10)

amount = arr10_1
puts = arr10
puts " минимальный из его локальных минимумов: #{amount.min}"

nextEx(11)
p 'Дан целочисленный массив. Определить количество участков, на которых его элементы монотонно возрастают.'


print arr11=[1, 2, 3, 4, 5, 4, 7, 8, 9, 10, 1, 12, 13]
puts""
result=0
arr11.each_with_index do |item,index|

  if index == 0
    result +=1 if  item < arr11[index+1]
  elsif index != arr11.length-1
     result +=1 if arr11[index-1]>=item && item < arr11[index+1]
  end
end


puts "Количество участков, на которых его элементы монотонно возрастают:  #{result} "

nextEx(12)


puts 'Дано вещественное число R и массив вещественных чисел. Найти элемент массива,
который наиболее близок к данному числу.'
puts""
r=(-0.1)
arr12=Array.new(10){rand(-0.9..1)}

print arr12
puts ""
puts ""

    a=arr12.select{|n|n<r}
    b=arr12.select{|n|n>r}
elem=0
          if r-a.max > b.min-r
            elem=b.min
          else
            elem=a.max
          end
puts "елемент массива наиболее близок к данному числу #{elem}"


nextEx(13)

p'Дан целочисленный массив. Преобразовать его, вставив перед каждым положительным элементом нулевой элемент.'


print arr13=(-5..5).to_a
puts""
arr13_1 = []

    arr13.each do |n|
             if n>=0
          arr13_1 << arr13[0]
          arr13_1 << n
            else
          arr13_1 << n
            end
    end
print "result : #{arr13_1}"
nextEx(14)
p  "Дан целочисленный массив.
Преобразовать его, вставив после каждого положительного элемента нулевой элемент."

print arr14=(-5..5).to_a
puts""
arr14_1 = []

    arr14.each do |n|
             if n>=0
          arr14_1 << n
          arr14_1 << arr13[0]
            else
          arr14_1 << n
            end
    end
print "result :#{arr14_1}"


nextEx(15)

      p "Дан целочисленный массив. Упорядочить его по возрастанию."
      print arr14=((-5..10).to_a).reverse
      puts""
      print arr14_1 = arr14.sort
      puts""

nextEx(16)


    p"Дан целочисленный массив. Вывести индексы массива в том порядке,в котором соответствующие им элементы образуют убывающую последовательность."

  print arr16= [-1, -2, -3, -4, -5,10, 9, 8, 7, 6, 5, 6, 3, 2, 1, 8, -1, -2, -3, -4, -5]
   puts""
    result_16=[]
    arr16.each_with_index do |item,index|
            if index != arr16.length-1
          result_16 << index if arr16[index]>arr16[index+1]
            end
            if index == arr16.length-1
              result_16 << index if item<arr16[index-1]
            end
    end

    puts "Индексы массива в том порядке,в котором соответствующие им"
    puts"элементы образуют убывающую последовательность : #{result_16}"


    nextEx(17)

    p "Дан целочисленный массив. Найти индекс минимального элемента."

    print arr17= [-1, -2, -3, -4, -5,10, 9, 8, 7, 6, 5, 6, 3, 2, 1, 8, -1, -2, -3, -4, -5]
     puts""
     result_17=[]

       arr17.each_with_index do |n,i|
         result_17 << i if n == arr17.min

       end
  puts "индекс минимального элемента: #{result_17}"

    nextEx(18)
p "Дан целочисленный массив. Найти индекс первого минимального элемента"

print arr18= [-1, -2, -3, -4, -5,10, 9, 8, 7, 6, 5, 6, 3, 2, 1, 8, -1, -2, -3, -4, -5]
 puts""
 result_18=[]

   arr18.each_with_index do |n,i|
     result_18 << i if n == arr18.min

   end
puts "индекс первого минимального элемента: #{result_18[0]}"

nextEx(19)


p "Дан целочисленный массив. Найти индекс последнего минимального элемента."

print arr19= [-1, -2, -3, -4, -5,10, 9, 8, 7, 6, 5, 6, 3, 2, 1, 8, -1, -2, -3, -4, -5]
 puts""
 result_19=[]

   arr19.each_with_index do |n,i|
     result_19 << i if n == arr19.min

   end
   last_19=result_19.length-1
puts " индекс последнего минимального элемента: #{result_19[last_19]}"


nextEx(20)

p "Дан целочисленный массив. Найти минимальный четный элемент."

print arr20= [-1, -2, -3, -4, -5,10, 9, 8, 7, 6, 5, 6, 3, 2, 1, 8, -1, -2, -3, -4, -5]
 puts""
 result_20=[]

    result_20 = arr20.find_all {|elem| (elem % 2 == 0) }
   p "минимальный четный элемент : #{result_20.min} "

nextEx(21)

 p "Дан целочисленный массив. Найти минимальный нечетный элемент."

 print arr21= [-1, -2, -3, -4, -5,10, 9, 8, 7, 6, 5, 6, 3, 2, 1, 8, -1, -2, -3, -4, -5]
  puts""
  result_21=[]

     result_21 = arr20.find_all {|elem| (elem.odd?) }
    p "минимальный нечетный элемент : #{result_21.min} "

nextEx(22)
    p "Дан целочисленный массив. Найти максимальный нечетный элемент."
    print arr22= [-1, -2, -3, -4, -5,10, 9, 8, 7, 6, 5, 6, 3, 2, 1, 8, -1, -2, -3, -4, -5]
     puts""
     result_22=[]

        result_22 = arr22.find_all {|elem| (elem.odd?) }
       p "максимальный нечетный элемент : #{result_22.max} "

nextEx(23)
  p "Дан целочисленный массив. Найти минимальный положительный элемент."
  print arr23= [-1, -2, -3, -4, -5,10, 9, 8, 7, 6, 5, 6, 3, 2, 1, 8, -1, -2, -3, -4, -5]
   puts""
   result_23=[]

   result_22 = arr22.find_all {|elem| elem > 0  }
  p "минимальный положительный элемент : #{result_22.min} "


nextEx(24)
   range_24=(rand(-100..10))..(rand(10..100))
  p"Дан целочисленный массив и интервал:#{range_24}. Найти минимальный из элементов в этом интервале."

  print arr24= [-1, -2, -3, -4, -5,10, 9, 8, 7, 6, 5, 6, 3, 2, 1, 8, -1, -2, -3, -4, -5]
  puts""

  print "range : #{range_24}"
  result_24=[]
   puts""

      arr24.each do |elem|
        if (range_24).include? elem
        result_24 << elem
        end
      end

print " минимальный из элементов в этом интервале: #{result_24.min}"
nextEx(25)

 p"Дан целочисленный массив. Найти количество элементов, расположенных перед первым минимальным."

 print arr25= [-1, -2, -3, -4, -5,10, 9, 8, 7, -6, 5, 6, 3, 2, 1, 8, -1, -2, -3, -4, -5]
 puts""
 result_25=[]

     arr25.each do |elem|
       if elem == arr25.min
         break
       else
       result_25 << elem
       end
     end

print "количество элементов, расположенных перед первым минимальным : #{result_25.count} "

nextEx(26)
p "Дан целочисленный массив. Найти количество элементов, расположенных после первого максимального."

print arr26= [-1, 11, -3, -4, -5,10, 9, 8, 7, -6, 5, 6, 10, 2, 9, 8, -1, -2, -3, -4, -5]
puts""

index_of_max=[]

  index_of_max_first =(index_of_max = arr26.each_index.select { |index| arr26[index] == arr26.max}).first
  result_26=arr26[index_of_max_first+1..(arr26.length-1)]


print "количество элементов, расположенных после первого максимального: #{result_26.count}"
puts""

nextEx(27)

p  "Дан целочисленный массив. Найти количество элементов, расположенных перед последним максимальным."

print arr27= [-1, 1, -3, -4, -5,10, 9, 8, 7, 30, 5, 6, 10, 30, 9, 8, 1, 50, 11, -4, -5]
puts""
  index_of_max_last =(index_of_max = arr27.each_index.select{|index| arr27[index] == arr27.max}).last
     result_27 = arr27[0..index_of_max_last-1]
     print "количество элементов, расположенных перед последним максимальным: #{result_27.count}"
     puts""

nextEx(28)

p "Дан целочисленный массив. Найти количество элементов, расположенных после последнего максимального."
print arr28= [-1, 11, -3, -4, -5,10, 9, 8, 7, -6, 5, 6, 11, 2, 9, 8, -1, -2, -3, -4, -5]
puts""

index_of_max_28=[]

  index_of_max_last_28 =(index_of_max_28 = arr28.each_index.select { |index| arr28[index] == arr28.max}).last
 result_28=arr28[index_of_max_last_28+1..(arr28.length-1)]

print "количество элементов, расположенных после последнего максимального: #{result_28.count}"
puts""

nextEx(29)


p"Дан целочисленный массив. Найти индекс первого экстремального (то есть минимального или максимального) элемента."

print arr29= [-1, -2, -20, -4, -5,10, 9, 8, 20, 6, 5, 6, 3, 20, 1, 8, -1, -2, -3, -4, -5]
puts""
result_29=[]

                    result_29=arr29.map{|e| e.abs }
                    ind_29_extrem=result_29.each_index.select{ |i|  result_29[i] == result_29.max  }
puts""

puts " Индекс первого экстремального (то есть минимального или максимального) элемента :  #{ind_29_extrem[0]}"


nextEx(30)

p "Дан целочисленный массив. Найти количество элементов, между первым и последним минимальным."
print arr30 = [-1, -6, -3, -4, -5,10, 9, 8, 7, -6, 5, 6, 11, 2, 9, 8, -1, -2, -3, -4, -6]
puts""

 index_of_min_30=[]

        index_of_min_30=arr30.each_index.select { |index| arr30[index] == arr30.min}
        result_30 =( arr30[index_of_min_30[0]+1..index_of_min_30[-1]-1]).count

p "количество элементов, между первым и последним минимальным: #{result_30}"
puts""
nextEx(31)

print "Дан целочисленный массив. Найти два наибольших элемента."
print arr31 = [-1, -6, 50, -4, -5,10, 9, 8, 7, -6, 5, 6, 11, 2, 9, 8, -1, -2, -3, -4, -6]
puts""
      result_31=arr31.sort.last(2)

print "два наибольших элемента: #{result_31}"

nextEx(32)


print "Дан целочисленный массив. Найти максимальное количество подряд идущих минимальных элементов."
puts""

print arr32 = [-1, -10, -10, -10, -10,-10, 9, 8, 7, -10, -10, 6, 11, 2, 9, 8, -1, -10, -10, -4, -6]
puts""

           index_of_min_32=arr32.each_index.select { |index| arr32[index] == arr32.min}
puts""

result_32=[]

array_with_elements=[]
                  i=0
             index_of_min_32.each_with_index do |elem,index|

                  if index == 0
                    result_32 << elem
                    array_with_elements[i] = result_32
                  end
                          if index > 0

                                      if elem-1 == index_of_min_32[index-1]
                                        result_32 << elem
                                        array_with_elements[i] = result_32
                                      end
                                      unless elem-1 == index_of_min_32[index-1]
                                            result_32=[]
                                           i+=1
                                           result_32 << elem
                                      end
                          end
              end

              max_size  = array_with_elements.max_by(&:size).size


print  " Максимальное количество подряд идущих минимальных элементов: #{max_size} "
puts""


nextEx(33)

p "Дан целочисленный массив. Вывести вначале все его четные элементы, а затем - нечетные."

print arr33 = [-1, -10, -10, -10, -5,10, 9, 8, 7, -10, -10, 6, 11, 2, 9, 8, -1, -2, -3, -4, -6]
puts""
  result_33=arr33.partition{ |elem| elem.even?}
puts "четные элементы : #{result_33[0]}"
puts "нечетные : #{result_33[1]}"

nextEx(34)

 puts "Дан целочисленный массив. Найти все нечетные элементы."

 arr_34 = *109..122
print arr_34
puts ""
puts ""

even_34=[]

arr_34.each_with_index { |name,index|  even_34 << name if name.odd? }

puts " elements even : #{even_34}"


nextEx(35)

puts "Дан целочисленный массив. Найти количество нечетных элементов."

arr_35 = *109..122
print arr_35
puts ""
puts ""

even_35=[]

arr_35.each_with_index { |name,index|  even_35 << name if name.odd? }

puts "number of elements even : #{even_35.count}"




 nextEx(36)

 p "Дан целочисленный массив. Удалить все элементы, встречающиеся менее двух раз."

 print arr36 = [-1, -10, -10, -10, -5,10, 9, 8, 7, -10, -10, 6, 11, 2, 9, 8, -1, -2, -3, -4, -6]
 puts""
    result_36= arr36.select{ |e| arr36.count(e) > 1 }

p "Елементы встречающиеся более двух раз : #{result_36}"

nextEx(37)

p "Дан целочисленный массив. Удалить все элементы, встречающиеся ровно два раза."

print arr37 = [-1, -10, -10, -10, -5,10, 9, 8, 7, -10, -10,9, 8, -1, -2, -3, -4, -6]
puts""
result_37=[]
                    arr37.each do |elem|
                          unless arr37.count(elem)==2
                              result_37 << elem
                       end
                    end


print" Массив без элементов, встречающиеся ровно два раза  #{result_37}"

nextEx(38)

print "Дан целочисленный массив. Найти среднее арифметическое модулей его элементов."


print arr38 = [-1, -10, -10, -10, -5,10, 9, 8, 7, -10, -10, 6, 11, 2, 9, 8, -1, -2, -3, -4, -6]
puts""

      result_38 = (arr38.map {|e|  e.abs }).sum / arr38.count

 puts "среднее арифметическое модулей элементов массива : #{result_38} "
nextEx(39)


number_39 = 149586
puts "Дано целое число #{number_39}. Найти сумму его цифр."

 result_39=((number_39.to_s).split('').map{|e|e.to_i}).sum

puts "сумма цифр : #{result_39}"

nextEx(40)

puts "Дан целочисленный массив. Возвести в квадрат
отрицательные элементы и в третью степень - положительные. Нулевые элементы - не изменять."

print arr38 = [-1, -10, -10, -10, -5,10, 9, 8, 7, -10, -10, 6, 11, 2, 9, 8, -1, -2, -3, -4, -6]
puts""
  result_38=[]

           arr38.each_with_index do |val,ind|
                result_38 << val if ind == 0
                if ind > 0
                      case
                      when val < 0
                        x=val**2
                        result_38 << x
                      when val > 0
                         y=val**3
                           result_38 << y
                      end
                      end
                end


print "Результат : #{result_38}"

nextEx(41)
n=6
a=2

puts "Дано число А : #{a} и натуральное число N : #{n} . Найти результат следующего выражения 1 + А + А*2 + А*3 + … + А*N."
arr = []

n.times do |e|
  arr<< a*(e+1)
end
result_41 = (arr.sum)+1

print  "результат выражения : #{result_41}"

nextEx(42)

puts "Дано натуральное число N=#{n} Найти результат следующего произведения 1*2*…*N. "

result_42 =((1..n).to_a).inject(1){|one,two| one * two }

puts "результат следующего произведения 1*2*…*N = #{result_42} "

nextEx(43)

puts "Дан целочисленный массив. Найти среднее арифметическое его элементов."

print arr43 = [1,10,10,10,5]
puts""

  result_43=(arr43.inject(0){|one,two| one + two })/arr43.count

print "среднее арифметическое элементов :#{result_43}"

nextEx(44)
p "Дан целочисленный массив. Найти все четные элементы."
     arr_44 = *109..122
print arr_44
puts ""
puts ""

even_44=[]

arr_44.each_with_index { |name,index|  even_44 << name if name.even? }

puts " elements even : #{even_44}"

nextEx(45)

puts "Дан целочисленный массив. Найти количество четных элементов."
arr_45 = *109..122
print arr_45
puts ""
puts ""

even_45=[]

arr_45.each_with_index { |name,index|  even_45 << name if name.even? }
result_45 = even_45.count
puts " number of even elements : #{result_45}"

nextEx(46)
 k_46 = 39
print "Дан целочисленный массив и число К=#{k_46}.
Если существует элемент, меньший К, то вывести true; в противном случае вывести false."
puts ""
arr_46 = *43..55

print arr_46
    result_46=arr_46.count{ |elem| elem < k_46 } > 1 ? true : false
    puts ""
    print result_46
    puts ""

nextEx(47)
  k_47 = 57
puts "Дан целочисленный массив и число К=#{k_47}
Если все элементы массива меньше К, то вывести true; в противном случае вывести false."
arr_47 = *47..56
print arr_47
puts ""
      result_47=arr_47.count{ |elem| elem < k_47 } > arr_47.count ? false : true
      puts ""
      print result_47
      puts ""

nextEx(48)
k_48 = 57
puts "Дан целочисленный массив и число К=#{k_48}. Вывести количество элементов, меньших К."
puts ""
arr_48 = *41..57
print arr_48
      result_48 = (arr_48.find_all{|elem| elem < k_48 }).count
puts ""
print "количество элементов, меньших #{k_48} = #{result_48}"

nextEx(49)
k_49 = 33
puts "Дан целочисленный массив и число К=#{k_49}. Вывести индекс первого элемента, большего К."
puts ""
arr_49 = *32..39
print arr_49
          result_49 = arr_49.index{ |elem|elem > k_49 }

puts ""
print "индекс первого элемента, большего К = #{result_49}"

nextEx(50)
p "Дан целочисленный массив.
Вывести индексы элементов, которые меньше своего левого соседа, и количество таких чисел."
puts ""
arr_50 = [-1, -10, -10, -10, -5,10, 9, 8, 7, -10, -10, 6, 11, 2, 9, 8, -1, -2, -3, -4, -6]
print arr_50
puts ""
arr_count_elem_min=[]
arr_count_ind_min=[]
                    arr_50.each_with_index do |elem,ind|
                        if  ind !=0
                            if arr_50[ind-1] > elem
                              arr_count_elem_min << elem
                              arr_count_ind_min << ind
                            end
                        end
                      end

print " Елементы меньше своего левого соседа: #{arr_count_elem_min}"
puts""
print " Индексы элементов, которые меньше своего левого соседа: #{arr_count_ind_min}"
puts""
print " Количество таких чисел: #{arr_count_elem_min.count}"
puts""
nextEx(51)

puts "Дан целочисленный массив. Вывести индексы элементов,
которые меньше своего правого соседа, и количество таких чисел."

puts ""
arr_51 = [-1, -10, -10, -10, -5,1, 9,4,6, 8, 7, -10, -10, 6, 11, 2, 9, 8, -1, -2, -3, -4, -6]
print arr_51
puts ""
arr_count_elem_min=[]
arr_count_ind_min=[]
                    arr_51.each_with_index do |elem,ind|
                        if  ind < arr_51.length-1
                            if   elem < arr_51[ind+1]
                              arr_count_elem_min << elem
                              arr_count_ind_min << ind
                            end
                        end
                      end

print "элементы ,которые меньше своего правого соседа : #{arr_count_elem_min}"
puts""
print "индексы элементов,которые меньше своего правого соседа : #{arr_count_ind_min}"
puts""
print " Количество таких чисел: #{arr_count_elem_min.count}"
puts""


nextEx(52)

puts "Дан целочисленный массив.
 Вывести индексы элементов, которые больше своего правого соседа, и количество таких чисел."

 puts ""
 arr_52 = [-1, -10, -10, -10, -5,1, 9,4,6, 8, 7, -10, -10, 6, 11, 2, 9, 8, -1, -2, -3, -4, -6]
 print arr_52
 puts ""
 arr_count_elem_min=[]
 arr_count_ind_min=[]
                     arr_52.each_with_index do |elem,ind|
                         if  ind < arr_52.length-1
                             if   elem > arr_52[ind+1]
                               arr_count_elem_min << elem
                               arr_count_ind_min << ind
                             end
                         end
                       end

 print "элементы ,которые больше своего правого соседа : #{arr_count_elem_min}"
 puts""
 print "индексы элементов, которые больше своего правого соседа : #{arr_count_ind_min}"
 puts""
 print " Количество таких чисел: #{arr_count_elem_min.count}"
 puts""

 nextEx(53)

 p "Дан целочисленный массив. Найти количество минимальных элементов."

 print arr53= [-1, -2, -3, -4, -5,10, 9, 8, 7, 6, 5, 6, 3, 2, 1, 8, -1, -2, -3, -4, -5]
  puts""
  result_53=[]

    arr53.each_with_index do |n,i|
      result_53 << i if n == arr53.min
    end
puts "Количество минимальных элементов: #{result_53.count}"


nextEx(54)

p "Дан целочисленный массив. Заменить все положительные элементы на значение максимального."

arr_54 = (-10..5).to_a
result_54=[]
print arr_54
puts""

     arr_54.each do |n|
        n=arr_54.max if n>=0
        result_54 << n
     end

print result_54
