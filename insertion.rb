def insertion_sort(numbers)
  i = 1
  while (i < numbers.length)
    if (i > 0 && numbers[i] < numbers[i - 1])
      value = numbers[i]
      j = i - 1
      while (j >= 0 && value < ar[j])
        ar[j + 1] = ar[j]
        j -= 1
      end
      ar[j + 1] = value
    end
    i += 1
    ar.map{|i| print "#{i} " }
    print "\n"
  end
end
