class Fizzbuzz

  def checkFizzBuzz num
    if num % 3 == 0 && num % 5 == 0
      result = "Fizzbuzz"
    elsif num % 3 == 0
      result = "Fizz"
    elsif num % 5 == 0
      result = "Buzz"
    else
      result = num
    end
    return result
  end

  def multiplesOf1to999(num1,num2)
    numbers = createRange(num1,num2)
    sum = 0
    numbers.each do |number|
      if number % 3 == 0 || number % 5 == 0
        sum = number + sum
      end
    end
  return sum
  end

  def fibonacci
   numbers = [1,2]
   i = 1
   sum = 1
   loop do
    sum = sum + numbers[i]
    numbers.push(sum)
    i= i +1
   break if sum + numbers[i-1] > 4000000
   end
  return sum
  end


  def createRange num1, num2
    range = *(num1..num2)
  end
end
