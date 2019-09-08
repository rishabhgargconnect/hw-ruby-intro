# When done, submit this entire file to the autograder.

# Part 1

def sum arr
      sum=0
      arr.each{|x| sum+=x}
      sum
end

def max_2_sum arr
      if (arr.length == 0)
            0
      elsif (arr.length == 1)
            arr[0]
      else
            max=arr[0]
            second_max=-(2**(0.size * 8 -2))
            for i in 1..arr.length-1
                  if (arr[i] > max)
                        store = max
                        max= arr[i]
                        second_max = store
                  elsif arr[i] > second_max
                        second_max = arr[i]      
                  end   
            end
                  max+second_max
      end
end

def sum_to_n? arr, n
      if arr.length == 0 or arr.length == 1
            false
      end
      arr.sort!
      start_ind=0
      end_ind = arr.length-1
      while(start_ind<end_ind)
            if(arr[start_ind]+arr[end_ind]==n)
                 return true
            end
            if(arr[start_ind]+arr[end_ind]>n)
                  end_ind-=1
            else
                  start_ind+=1
            end 
      end
      false          
end

# Part 2

def hello(name)
  return "Hello, "+name
end

def starts_with_consonant? s
  if(s.length==0)
    return false
  end
  return /[b-df-hj-np-tv-z]/.match?(s[0].downcase)
end

def binary_multiple_of_4? s
      if s.length==0
      return false
      end
      num=0
      for i in (s.length-1).downto(0)
            if(s[i]!='0' and s[i]!='1')
                  return false
            end
            if(s[i]=='1')
                  num+=2**(s.length-1-i)
            end
      end
      puts(num)
      return num%4==0
end

# Part 3

class BookInStock
      @isbn
      @price
      def initialize(isbn,price)
                  if(isbn.length==0 or price<=0)
                        raise ArgumentError.new("The ISBN number is the empty string or the price is less than or equal to zero")
                  end
                   @isbn = isbn
                   @price = price
      end

      def isbn=(isbn_input)
            @isbn=isbn_input
      end

      def price=(price_input)
            @price=price_input
      end

      def isbn
            @isbn
      end

      def price
            @price
      end
      
      def price_as_string
            price_copy = @price
            count_decimals = 0
            while (price_copy - price_copy.to_i > 0)  
                  count_decimals+=1  
                  price_copy *= 10;  
            end
            price_copy_2=@price.to_s
            if(count_decimals==0)
                  price_copy_2+='.'
            end
            for i in 1..2-count_decimals
                  price_copy_2+='0'
            end
            return '$'+price_copy_2
      end
end
