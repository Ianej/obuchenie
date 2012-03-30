def a! i
  a=i  
  puts a
  if i>1
    i=i-1    
    a1=a!(i)
    a=a*a1
    puts a.to_s+' a v if'
    puts a1.to_s+' a1 v if'
 end
  puts 'b1'
  a
end
puts 'Vvedite chislo "!"'
r=gets.chomp.to_i
puts
puts a! r

