array_types = [10, "text", 3.14, 2**62, [], :one, Bignum, nil, true]
array_types.each { |obj| puts "#{obj} - #{obj.class}"}