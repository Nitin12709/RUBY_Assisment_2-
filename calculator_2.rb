all_num=[]
begin 
puts "Enter first num"
num1=gets.chomp.to_f
puts "Enter second num"
num2=gets.chomp.to_f
puts "Enter operation"
operation=gets.chomp
all_num.push('(')
all_num.push(num1)
all_num.push(operation)
all_num.push(num2)
all_num.push(')')
puts "Answer is #{eval(all_num.join(""))}"
rescue Exception => e  
    all_num.clear()
    puts e.message
    retry
end
while  true
  begin
       puts "Please Enter number\n1. for perform another operation on number \n2. for undo privius operation"
        statement=gets.chomp.to_f
      if statement==1
          puts "Enter +-*/ operation"
          operation=gets.chomp
          all_num.push(operation)
          puts "Enter number "
          new_num=gets.chomp.to_f
          all_num.push(new_num)
          calc=all_num.join("")
          puts "Answer of #{calc} is #{eval(calc)}"
      else
        puts "invalid Number"
      end
   rescue Exception=>e
    all_num.pop()
    all_num.pop()
    puts e.message
    retry
   end
   begin       
     if statement==2
          all_num.pop()
          all_num.pop()
          calc=all_num.join("")
          puts "Answer of #{calc} is #{eval(calc)}"
      else
          puts "Enter valid Number"
      end
       puts "Please Enter number\n1. for continue \n2. for terminate"
       statement=gets.chomp.to_f
      if statement==1
          next
      else
          break
       end
    rescue Exception=>e
       puts e.message
       retry
    end
end
calc=all_num.join("")
puts "Total of #{calc} is #{eval(calc)}"