require 'pp'

def bubblesort(array)
    while !(is_sorted(array)) #Checks to see if algorithm is sorted inbetween every loop
        array.take(array.length - 1).each_with_index{|number, index| #If not iterates
        pp array #Prints each iteration
            if number > array[index + 1] #Performs swap
                temp = array[index] 
                array[index] = array[index + 1]
                array[index + 1] = temp
            end       
        }
    end
    puts "Bubblesort Complete!"
end

def is_sorted(check_array) #Checks to see if array is sorted
    check_array.take(check_array.length - 1).each_with_index{ |element, index|
        if element > check_array[index + 1]
            return false
        end
    }
    return true
end

bubblesort([9,2,3,4,5,6,7,8,1])
bubblesort([9,8,7,6,5,4,3,2,1])
bubblesort([1,503,294,201,3954,293,123,-1,23])

